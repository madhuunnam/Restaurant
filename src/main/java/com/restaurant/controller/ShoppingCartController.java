package com.restaurant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.Customer;
import com.restaurant.model.LineItems;
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
			@RequestParam("restaurantId") String restaurantId,
			@RequestParam("chValue") String chValue,
			@RequestParam("itemName") String itemName,
			Model model) {
		
		LineItems lineItem = new LineItems();
		System.out.println("Item Name is " + itemName);
		lineItem.setItemName(itemName);
		lineItem.setQuantity(Integer.parseInt(quantity));
		lineItem.setNote(specialInstructions);
		lineItem.setPrice(Float.parseFloat(chValue));
		
		order.getLineItems().add(lineItem);

		RestTemplate restTemplate = new RestTemplate();
		Restaurant rest = (Restaurant) restTemplate
				.getForObject("http://localhost:8090/getRestaurantById/"+ restaurantId, Restaurant.class);
		
		Object itemsList =  restTemplate
				.getForObject("http://localhost:8090/getItemListForRestaurant/"+restaurantId, List.class);
		
		
		if(order.getRestId() == null || order.getRestId().isEmpty()){
			order.setRestId(restaurantId);
			order.setResName(rest.getRestName());
			
			if(rest.getDeliFee()!=null){
				order.setDeliFee(Float.parseFloat(rest.getDeliFee()));
			}
			
		}
		
		model.addAttribute("MenuItems",itemsList);
		model.addAttribute("rest",rest);
		return "RestaurantDetails";
	}
	
	@RequestMapping("/showCart")
	public String showCart(Model model){
		
		System.out.println(order);
		return "ShoppingCart/CartSummary";
	}
	
	@RequestMapping("/pickUpOrder")
	public String pickUpOrder(Model model){
		Restaurant restaurant = new Restaurant();
		
		for(LineItems item : order.getLineItems()){
			
			System.out.println(item);
		}
		
		if(order.getRestId() != null){
			RestTemplate restTemplate = new RestTemplate();
			restaurant = (Restaurant) restTemplate
					.getForObject("http://localhost:8090/getRestaurantById/"+ order.getRestId(), Restaurant.class);
		}
		model.addAttribute("rest", restaurant);
		return "ShoppingCart/ReviewOrder";
	}
	
	@RequestMapping("/checkOut")
	public String checkout(Model model,Authentication authentication){
		
		String custId= "";
		if(authentication!=null){
			User user = (User) authentication.getPrincipal();
			custId = user.getUserId();
		}
		
		RestTemplate restTemplate = new RestTemplate();
		Customer customer = (Customer) restTemplate
				.getForObject("http://localhost:8090/getCustomerById/"+ custId, Customer.class);
		
		System.out.println("Customer object is "+ customer);
		model.addAttribute("customer",customer);
		return "ShoppingCart/Checkout";
	}

}
