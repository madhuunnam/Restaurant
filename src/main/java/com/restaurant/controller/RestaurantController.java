package com.restaurant.controller;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.Choice;
import com.restaurant.model.ChoiceValues;
import com.restaurant.model.Item;
import com.restaurant.model.RestStatistics;
import com.restaurant.model.Restaurant;
import com.restaurant.model.User;

@Controller
public class RestaurantController {

	@RequestMapping("/getRestaurantDetailsPage")
	public String restaurantPage(Model model, @RequestParam("selectedRest") String selRestId) {

		System.out.println("Selected Restaurant Id " + selRestId);

		RestTemplate restTemplate = new RestTemplate();
		Restaurant rest = (Restaurant) restTemplate.getForObject("http://localhost:8090/getRestaurantById/" + selRestId,
				Restaurant.class);

		Object itemsList = restTemplate.getForObject("http://localhost:8090/getItemListForRestaurant/" + selRestId,
				List.class);

		System.out.println("MenuItems" + itemsList);
		model.addAttribute("MenuItems", itemsList);
		model.addAttribute("rest", rest);
		return "RestaurantDetails";
	}

	@RequestMapping("/MenuPage")
	public String getMenuPage(Model model, Authentication authentication) {

		User user = (User) authentication.getPrincipal();
		System.out.println("Email is " + user.getUserEmail() + "ID is " + user.getUserId());
		RestTemplate restTemplate = new RestTemplate();

		Object itemsList = restTemplate
				.getForObject("http://localhost:8090/getItemListForRestaurant/" + user.getUserId(), List.class);

		System.out.println("MenuItems" + itemsList);

		model.addAttribute("MenuItems", itemsList);
		return "Restaurant/Menu";
	}

	@RequestMapping("/getRestaurantMenu")
	public String getRestaurantMenu(Model model, Authentication authentication) {

		User user = (User) authentication.getPrincipal();
		System.out.println("Email is " + user.getUserEmail() + "ID is " + user.getUserId());

		return "Restaurant/Menu";
	}

	@RequestMapping("/RestaurantActiveOrder")
	public String getCustomerOrderPage(Model model, Authentication authentication) {

		User user = (User) authentication.getPrincipal();
		RestTemplate restTemplate = new RestTemplate();
		Object ordersList = restTemplate
				.getForObject("http://localhost:8090/getOrderListForRestaurant/" + user.getUserId(), List.class);

		model.addAttribute("restActiveOrders", ordersList);
		return "Restaurant/RestaurantActiveOrder";

	}

	@RequestMapping("/getRestaurantStatistics")
	public String getRestaurantStatistics(Model model, Authentication authentication,
			@RequestParam("toDate") Date dateTo, @RequestParam("fromDate") Date dateFrom) {

		RestStatistics restStats = new RestStatistics();
		
		Format formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:SS");
		String toDate = formatter.format(dateTo);
		String fromDate = formatter.format(dateFrom);

		
		restStats.setToDate(dateTo);
		restStats.setFromDate(dateFrom);
		
		restStats.setTo(toDate);
		restStats.setFrom(fromDate);
		
		User user = (User) authentication.getPrincipal();
		RestTemplate restTemplate = new RestTemplate();
		String pickUpTotal = restTemplate
				.getForObject("http://localhost:8090/getPickUpOrdersTotalPrice/"+user.getUserId()+"/"+toDate+"/"+fromDate, String.class);

		String noOfPickUpOrders = restTemplate
				.getForObject("http://localhost:8090/getNumberOfPickUpOrders/" + user.getUserId()+"/"+toDate+"/"+fromDate, String.class);

		String deliveryTotal = restTemplate
				.getForObject("http://localhost:8090/getDeliveryOrdersTotalPrice/" + user.getUserId()+"/"+toDate+"/"+fromDate, String.class);

		String noOfDeliveryOrders = restTemplate
				.getForObject("http://localhost:8090/getNumberOfDeliveryOrders/" + user.getUserId()+"/"+toDate+"/"+fromDate, String.class);

		String reservationTotal = restTemplate
				.getForObject("http://localhost:8090/getReservationOrdersTotalPrice/" + user.getUserId()+"/"+toDate+"/"+fromDate, String.class);

		String noOfReservationOrders = restTemplate
				.getForObject("http://localhost:8090/getNumberOfReservationOrders/" + user.getUserId()+"/"+toDate+"/"+fromDate, String.class);

		String totalSum = restTemplate.getForObject("http://localhost:8090/getOrdersTotalPrice/" + user.getUserId()+"/"+toDate+"/"+fromDate,
				String.class);

		String totalNoOfOrders = restTemplate
				.getForObject("http://localhost:8090/getNumberOfOrders/" + user.getUserId()+"/"+toDate+"/"+fromDate, String.class);

		restStats.setNoOfPickUpOrders(noOfPickUpOrders);
		restStats.setSumOfPickUpOrders(pickUpTotal);
		restStats.setNoOfDeliveryOrders(noOfDeliveryOrders);
		restStats.setSumOfDeliveryOrders(deliveryTotal);
		restStats.setNoOfReservationOrders(noOfReservationOrders);
		restStats.setSumOfReservationOrders(reservationTotal);
		restStats.setTotalOrders(totalNoOfOrders);
		restStats.setTotalOrdersSum(totalSum);

		model.addAttribute("restStats", restStats);
		return "StatisticsPages/RestStatistics";

	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    dateFormat.setLenient(false);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	@ModelAttribute("menuItemModel")
	public Item getNewItem() {
		Item item = new Item();
		return item;
	}

	@ModelAttribute("menuChoiceModel")
	public Choice getNewChoice() {
		Choice choice = new Choice();
		return choice;
	}

	@ModelAttribute("menuChoiceValModel")
	public ChoiceValues getNewChoiceVal() {
		ChoiceValues choiceVal = new ChoiceValues();
		return choiceVal;
	}
}
