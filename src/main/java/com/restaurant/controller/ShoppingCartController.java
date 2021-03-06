package com.restaurant.controller;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.aop.scope.ScopedObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.AdminLedger;
import com.restaurant.model.CustLedger;
import com.restaurant.model.Customer;
import com.restaurant.model.LineItem;
import com.restaurant.model.Order;
import com.restaurant.model.RestLedger;
import com.restaurant.model.Restaurant;
import com.restaurant.model.User;

@Controller
public class ShoppingCartController {

	@Autowired
	Order order;

	@RequestMapping("/addItemToCart")
	public String addItemToCart(@RequestParam("addToCartQuantity") String quantity,
			@RequestParam("specialInstructions") String specialInstructions,
			@RequestParam("restaurantId") String restaurantId,
			@RequestParam(name = "chValue", defaultValue = "0.0") String chValue,
			@RequestParam("itemName") String itemName, @RequestParam("itemNum") String itemNum, Model model) {

		LineItem lineItem = new LineItem();
		lineItem.setItemName(itemName);
		lineItem.setQuantity(Integer.parseInt(quantity));
		lineItem.setNote(specialInstructions);
		lineItem.setPrice(Float.parseFloat(chValue));
		lineItem.setItemNum(Integer.parseInt(itemNum));

		order.getLineItems().add(lineItem);
		order.setNumberOfLines(order.getLineItems().size());
		order.setItemName(itemName);
		calculateOrderTotal();

		RestTemplate restTemplate = new RestTemplate();
		Restaurant rest = (Restaurant) restTemplate
				.getForObject("http://localhost:8090/getRestaurantById/" + restaurantId, Restaurant.class);

		Object itemsList = restTemplate.getForObject("http://localhost:8090/getItemListForRestaurant/" + restaurantId,
				List.class);

		if (order.getRestId() == null || order.getRestId().isEmpty()) {
			order.setRestId(restaurantId);
			order.setResName(rest.getRestName());

			if (rest.getDeliFee() != null) {
				order.setDeliFee(Float.parseFloat(rest.getDeliFee()));
			}

		}

		model.addAttribute("MenuItems", itemsList);
		model.addAttribute("rest", rest);
		return "RestaurantDetails";
	}


	@RequestMapping("/showCart")
	public String showCart(Model model) {

		return "ShoppingCart/CartSummary";
	}

	@RequestMapping("/pickUpOrder")
	public String pickUpOrder(Model model) {

		order.setOrderType("PickUp");
		order.setResTime(null);
		order.setPickTime(null);
		order.setArriveTime(null);
		order.setDeliAddr("");
		
		calculateOrderTotal();
		
		Restaurant restaurant = new Restaurant();

		if (order.getRestId() != null) {
			RestTemplate restTemplate = new RestTemplate();
			restaurant = (Restaurant) restTemplate
					.getForObject("http://localhost:8090/getRestaurantById/" + order.getRestId(), Restaurant.class);
		}
		model.addAttribute("rest", restaurant);
		return "ShoppingCart/ReviewOrder";
	}
	
	@RequestMapping("/deliveryOrder")
	public String deliveryOrder(@RequestParam("deliAddr") String deliveryAdd, @RequestParam("receiverName") String receiverName, Model model) {

		order.setOrderType("Delivery");
		order.setDeliAddr(deliveryAdd);
		order.setReceiverName(receiverName);
		order.setResTime(null);
		order.setPickTime(null);
		order.setArriveTime(null);
		order.setResTime(null);
		order.setPickTime(null);
		order.setArriveTime(null);
		
		calculateOrderTotal();
		
		System.out.println("Delivery ORDER***"+order);
		Restaurant restaurant = new Restaurant();

		if (order.getRestId() != null) {
			RestTemplate restTemplate = new RestTemplate();
			restaurant = (Restaurant) restTemplate
					.getForObject("http://localhost:8090/getRestaurantById/" + order.getRestId(), Restaurant.class);
		}
		model.addAttribute("rest", restaurant);
		model.addAttribute("isDelivery", "Y");
		return "ShoppingCart/ReviewOrder";
	}

	@RequestMapping("/checkOut")
	public String checkout(Model model, Authentication authentication) {

		String custId = "";
		if (authentication != null) {
			User user = (User) authentication.getPrincipal();
			custId = user.getUserId();
		}

		RestTemplate restTemplate = new RestTemplate();
		Customer customer = (Customer) restTemplate.getForObject("http://localhost:8090/getCustomerById/" + custId,
				Customer.class);
		if (order.getCustId() == null || order.getCustId().isEmpty()) {
			order.setCustId(custId);
			order.setCustName(customer.getFirstName());
		}
		model.addAttribute("customer", customer);
		return "ShoppingCart/Checkout";
	}

	@RequestMapping("/confirmOrder")
	public String confirmOrder(@RequestParam("cardName") String cardName, @RequestParam("cardType") String cardType,
			@RequestParam("cardExp") String cardExp, @RequestParam("cardNumber") String cardNo,
			@RequestParam("cardCode") String cardCode, @RequestParam("billZip") String billZip,
			@RequestParam("billAddr") String billAddr, Model model) {

		order.setStatus("New");

		RestTemplate restTemplate = new RestTemplate();

		Customer customer = (Customer) restTemplate
				.getForObject("http://localhost:8090/getCustomerById/" + order.getCustId(), Customer.class);
		DateFormat format = new SimpleDateFormat("MM/yyyy", Locale.ENGLISH);
		Date cardExpdate = null;
		try {
			cardExpdate = format.parse(cardExp);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		customer.setCardName(cardName);
		customer.setCardType(cardType);
		customer.setCardNumber(cardNo);
		customer.setCardExp(cardExpdate);
		customer.setCardCode(cardCode);
		customer.setBillZip(billZip);
		customer.setBillAddr(billAddr);

		restTemplate.put("http://localhost:8090/updateCustomerProfile", customer);

		String orderNum = "0";
		orderNum = restTemplate.getForObject("http://localhost:8090/getNewOrderIdToInsert", String.class);
		if (orderNum == null || orderNum.isEmpty()) {
			orderNum = "0";
		}
		order.setOrderNo(String.valueOf(Integer.parseInt(orderNum) + 1));
		order.setOrderTime(new Date());
		Order orderObj = extractSessionOrderObj(order);

		ResponseEntity<String> insertStatus = restTemplate.postForEntity("http://localhost:8090/addOrder", orderObj,
				String.class);

		Object ordersList = restTemplate
				.getForObject("http://localhost:8090/getOrderListForCustomer/" + order.getCustId(), List.class);

		model.addAttribute("custActiveOrders", ordersList);
		((ScopedObject) order).removeFromScope();
		return "CustomerPages/CustActiveOrder";
	}

	@RequestMapping("/processOrderUpdate")
	public String orderCommit(@RequestParam("msgToCustToUpdate") String msgToCust,
			@RequestParam("orderStatusToUpdate") String status, @RequestParam("orderNoToUpdate") String orderNum,
			Model model, Authentication authentication) {

		User user = (User) authentication.getPrincipal();
		RestTemplate restTemplate = new RestTemplate();

		Order orderFromDb = (Order) restTemplate.getForObject(
				"http://localhost:8090/getOrderbyOrderNumForRestaurant/" + orderNum + "/" + user.getUserId(),
				Order.class);
		if (status == null) {
			status = "";
		}
		if (!msgToCust.equals(orderFromDb.getMsgToCust())) {
			if (!orderFromDb.getMsgToCust().equals("")) {
				orderFromDb.setMsgToCust(orderFromDb.getMsgToCust() + "; " + msgToCust);
			} else {
				orderFromDb.setMsgToCust(msgToCust);
			}
		}
		if (status.equals("Complete")) {
			if(orderFromDb.getOrderType().equals("PickUp")){
			orderFromDb.setPickTime(new Date());
			}else if( orderFromDb.getOrderType().equals("Reservation")){
			orderFromDb.setArriveTime(new Date());
			}
			ResponseEntity<String> insertStatus = restTemplate.postForEntity("http://localhost:8090/addTransaction",
					orderFromDb, String.class);

			addCustLegder(orderFromDb);
			addRestLegder(orderFromDb);
			addAdminLegder(orderFromDb);
			
			orderFromDb.setStatus("Inactive");
			
			restTemplate.put("http://localhost:8090/updateOrder", orderFromDb);

		} else if (status.equals("New")) {
			restTemplate.put("http://localhost:8090/updateOrder", orderFromDb);
		}

		Object ordersList = restTemplate
				.getForObject("http://localhost:8090/getOrderListForRestaurant/" + user.getUserId(), List.class);

		model.addAttribute("restActiveOrders", ordersList);
		return "Restaurant/RestaurantActiveOrder";

	}

	@RequestMapping("/reserveTable")
	public String tableReservation(@RequestParam("peopleCount") String noOfPeople,
			@RequestParam("time") String reserveTime, @RequestParam("nonsmoke") String nonSmoke,
			@RequestParam("restId") String restaurantId, @RequestParam("restName") String restName, Model model,
			Authentication authentication) {

		User user = (User) authentication.getPrincipal();
		RestTemplate restTemplate = new RestTemplate();

		order.setStatus("New");
		order.setOrderType("Reservation");
		order.setRestId(restaurantId);
		order.setResName(restName);
		order.setResPeople(Integer.parseInt(noOfPeople));
		order.setArriveTime(null);
		order.setPickTime(null);

		boolean nonSmokeValue = false;
		if (nonSmoke.equals("Yes")) {
			nonSmokeValue = true;
		} else {
			nonSmokeValue = false;
		}
		order.setNonSmoke(nonSmokeValue);

		DateFormat format = new SimpleDateFormat("HH:mm", Locale.ENGLISH);
		Date reservationTime = null;
		try {
			reservationTime = format.parse(reserveTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		order.setResTime(reservationTime);

		String orderNum = "0";
		orderNum = restTemplate.getForObject("http://localhost:8090/getNewOrderIdToInsert", String.class);
		if (orderNum == null || orderNum.isEmpty()) {
			orderNum = "0";
		}

		order.setOrderNo(String.valueOf(Integer.parseInt(orderNum) + 1));

		Customer customer = (Customer) restTemplate
				.getForObject("http://localhost:8090/getCustomerById/" + user.getUserId(), Customer.class);
		if (order.getCustId() == null || order.getCustId().isEmpty()) {
			order.setCustId(customer.getCustID());
			order.setCustName(customer.getFirstName());
		}

		order.setMsgToCust("Table Reserved");

		System.out.println(order);

		Order orderObj = extractSessionOrderObj(order);

		ResponseEntity<String> insertStatus = restTemplate.postForEntity("http://localhost:8090/addOrder", orderObj,
				String.class);

		Object ordersList = restTemplate
				.getForObject("http://localhost:8090/getOrderListForCustomer/" + user.getUserId(), List.class);

		model.addAttribute("custActiveOrders", ordersList);

		((ScopedObject) order).removeFromScope();
		return "CustomerPages/CustActiveOrder";
	}

	private void addCustLegder(Order order) {

		RestTemplate restTemplate = new RestTemplate();

		String ledgerNum = "0";
		ledgerNum = restTemplate.getForObject("http://localhost:8090/getMaxCustLedgerId", String.class);
		if (ledgerNum == null || ledgerNum.isEmpty()) {
			ledgerNum = "0";
		}
		CustLedger ledgerObject = new CustLedger();
		ledgerObject.setCustId(order.getCustId());
		ledgerObject.setLedgerNum(String.valueOf(Integer.parseInt(ledgerNum) + 1));
		ledgerObject.setCustName(order.getCustName());
		ledgerObject.setLedgerDate(order.getOrderTime());
		ledgerObject.setResId(order.getRestId());
		ledgerObject.setResName(order.getResName());
		ledgerObject.setOrderNum(order.getOrderNo());
		ledgerObject.setChargeAmt(order.getTotPrice());
		ledgerObject.setPayAmt(order.getTotPrice());
		ledgerObject.setPayMethod("Card");
		ledgerObject.setNote(order.getNotes());
		ledgerObject.setBalance(order.getTotPrice() - order.getTotPrice());

		ResponseEntity<String> insertStatus = restTemplate.postForEntity("http://localhost:8090/addToCustLedger",
				ledgerObject, String.class);

	}

	private void addRestLegder(Order order) {

		RestTemplate restTemplate = new RestTemplate();

		String ledgerNum = "0";
		ledgerNum = restTemplate.getForObject("http://localhost:8090/getMaxRestLedgerId", String.class);
		if (ledgerNum == null || ledgerNum.isEmpty()) {
			ledgerNum = "0";
		}
		RestLedger ledgerObject = new RestLedger();
		ledgerObject.setRestId(order.getRestId());
		ledgerObject.setOrderNum(order.getOrderNo());
		ledgerObject.setResName(order.getResName());
		ledgerObject.setLedgerNum(String.valueOf(Integer.parseInt(ledgerNum) + 1));
		ledgerObject.setLedgerDate(order.getOrderTime());
		ledgerObject.setCustName(order.getCustName());
		ledgerObject.setChargeAmt(order.getTotPrice());
		ledgerObject.setPayAmt(order.getTotPrice());
		ledgerObject.setPayMethod("Card");
		ledgerObject.setCheckNum("");
		ledgerObject.setNote(order.getNotes());
		ledgerObject.setBalance(order.getTotPrice() - order.getTotPrice());

		ResponseEntity<String> insertStatus = restTemplate.postForEntity("http://localhost:8090/addToRestLedger",
				ledgerObject, String.class);

	}

	 private void addAdminLegder(Order order) {
	
	 RestTemplate restTemplate = new RestTemplate();
	
	 AdminLedger ledgerObject = new AdminLedger();
	
	 ledgerObject.setCustId(order.getCustId());
	 ledgerObject.setCustName(order.getCustName());
	 ledgerObject.setResId(order.getRestId());
	 ledgerObject.setResName(order.getResName());
	 ledgerObject.setAssocId(null);
	 ledgerObject.setAssocName("");
	 ledgerObject.setOrderNum(order.getOrderNo());
	 ledgerObject.setLedgerDate(order.getOrderTime());
	
	 ledgerObject.setIncome(order.getTotPrice());
	 ledgerObject.setInMethod("Card");
	 ledgerObject.setInNote("");
	 
	 ledgerObject.setExpense(order.getTotPrice());
	 ledgerObject.setExMethod("Card");
	 ledgerObject.setExNote("");
	 
	 ledgerObject.setNote("");
	 ledgerObject.setBalance(order.getTotPrice() - order.getTotPrice());
	
	 ResponseEntity<String> insertStatus =
	 restTemplate.postForEntity("http://localhost:8090/addToAdminLedger",
	 ledgerObject,
	 String.class);
	
	 }

	@RequestMapping("/cancelOrder")
	public String cancelOrder(Model model) {

		((ScopedObject) order).removeFromScope();

		return "Home";
	}

	private Order extractSessionOrderObj(Order sessionOrderObj) {

		Order order = new Order();
		order.setOrderNo(sessionOrderObj.getOrderNo());
		order.setRestId(sessionOrderObj.getRestId());
		order.setCustId(sessionOrderObj.getCustId());
		order.setCustName(sessionOrderObj.getCustName());
		order.setResName(sessionOrderObj.getResName());
		order.setOrderType(sessionOrderObj.getOrderType());
		order.setOrderTime(sessionOrderObj.getOrderTime());
		order.setNumberOfLines(sessionOrderObj.getNumberOfLines());
		order.setItemName(sessionOrderObj.getItemName());
		order.setSubTot(sessionOrderObj.getSubTot());
		order.setDiscountPercentage(sessionOrderObj.getDiscountPercentage());
		order.setTaxRatePercent(sessionOrderObj.getTaxRatePercent());
		order.setTaxAmount(sessionOrderObj.getTaxAmount());
		order.setTip(sessionOrderObj.getTip());
		order.setDeliFee(sessionOrderObj.getDeliFee());
		order.setTotPrice(sessionOrderObj.getTotPrice());
		order.setReceiverName(sessionOrderObj.getReceiverName());
		order.setDeliAddr(sessionOrderObj.getDeliAddr());
		order.setStatus(sessionOrderObj.getStatus());
		order.setMsgToCust(sessionOrderObj.getMsgToCust());
		order.setMsgToRes(sessionOrderObj.getMsgToRes());
		order.setNonSmoke(sessionOrderObj.getNonSmoke());
		order.setResTable(sessionOrderObj.getResTable());
		order.setResPeople(sessionOrderObj.getResPeople());
		order.setResTime(sessionOrderObj.getResTime());
		order.setPickTime(sessionOrderObj.getPickTime());
		order.setArriveTime(sessionOrderObj.getArriveTime());
		order.setAgentName(sessionOrderObj.getAgentName());
		order.setNotes(sessionOrderObj.getNotes());

		order.setLineItems(sessionOrderObj.getLineItems());

		return order;
	}
	
	private void calculateOrderTotal() {
		float subtotal = 0;
		for (int i = 0; i < order.getLineItems().size(); i++) {
			subtotal = subtotal + order.getLineItems().get(i).getPrice();
		}

		order.setSubTot(subtotal);
		order.setTaxRatePercent(5.25f);
		order.setTaxAmount(subtotal * (order.getTaxRatePercent() / 100));
		float totalPrice = order.getSubTot() + order.getTaxAmount();
		
		if(order.getDeliAddr() != null && ! order.getDeliAddr().isEmpty()){
			totalPrice = totalPrice + order.getDeliFee();
		}

		BigDecimal bd = new BigDecimal(Float.toString(totalPrice));
		bd = bd.setScale(2, BigDecimal.ROUND_HALF_UP);
		totalPrice = bd.floatValue();
		
		BigDecimal bdTax = new BigDecimal(Float.toString(order.getTaxAmount()));
		bdTax = bdTax.setScale(2, BigDecimal.ROUND_HALF_UP);
		order.setTaxAmount(bdTax.floatValue());
		
		

		order.setTotPrice(totalPrice);
	}

}
