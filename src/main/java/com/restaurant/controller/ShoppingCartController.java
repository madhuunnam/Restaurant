package com.restaurant.controller;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.Customer;
import com.restaurant.model.LineItem;
import com.restaurant.model.Order;
import com.restaurant.model.Restaurant;
import com.restaurant.model.User;

@Controller
public class ShoppingCartController {

	@Autowired
	Order order;

	@RequestMapping("/addItemToCart")
	public String addItemToCart(@RequestParam("addToCartQuantity") String quantity,
			@RequestParam("specialInstructions") String specialInstructions,
			@RequestParam("restaurantId") String restaurantId, @RequestParam("chValue") String chValue,
			@RequestParam("itemName") String itemName, @RequestParam("itemNum") String itemNum, Model model) {

		LineItem lineItem = new LineItem();
		lineItem.setItemName(itemName);
		lineItem.setQuantity(Integer.parseInt(quantity));
		lineItem.setNote(specialInstructions);
		lineItem.setPrice(Float.parseFloat(chValue));
		lineItem.setItemNum(Integer.parseInt(itemNum));

		order.getLineItems().add(lineItem);
		order.setNumberOfLines(order.getLineItems().size());

		float subtotal = 0;
		for (int i = 0; i < order.getLineItems().size(); i++) {
			subtotal = subtotal + order.getLineItems().get(i).getPrice();
		}

		order.setSubTot(subtotal);
		order.setTaxRatePercent(5.25f);
		order.setTaxAmount(subtotal * (order.getTaxRatePercent() / 100));
		float totalPrice = order.getSubTot() + order.getTaxAmount();

		BigDecimal bd = new BigDecimal(Float.toString(totalPrice));
		bd = bd.setScale(2, BigDecimal.ROUND_HALF_UP);
		totalPrice = bd.floatValue();

		order.setTotPrice(totalPrice);

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

		Restaurant restaurant = new Restaurant();

		if (order.getRestId() != null) {
			RestTemplate restTemplate = new RestTemplate();
			restaurant = (Restaurant) restTemplate
					.getForObject("http://localhost:8090/getRestaurantById/" + order.getRestId(), Restaurant.class);
		}
		model.addAttribute("rest", restaurant);
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
	public String confirmOrder(Model model) {

		order.setStatus("New");

		RestTemplate restTemplate = new RestTemplate();

		String orderNum = restTemplate.getForObject("http://localhost:8090/getNewOrderIdToInsert/" + order.getRestId(),
				String.class);
		order.setOrderNo(String.valueOf(Integer.parseInt(orderNum) + 1));

		Order orderObj = extractSessionOrderObj(order);

		ResponseEntity<String> insertStatus = restTemplate.postForEntity("http://localhost:8090/addOrder", orderObj,
				String.class);

		Object ordersList = restTemplate
				.getForObject("http://localhost:8090/getOrderListForCustomer/" + order.getCustId(), List.class);
		
		model.addAttribute("custActiveOrders", ordersList);
		return "CustomerPages/CustActiveOrder";
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

}
