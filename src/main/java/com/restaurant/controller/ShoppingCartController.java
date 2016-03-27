package com.restaurant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.LineItems;
import com.restaurant.model.Order;
import com.restaurant.model.Restaurant;
import com.restaurant.model.User;

@Controller
public class ShoppingCartController {
	
	@Autowired
	Order order;
	
	@RequestMapping("/addItemToCart")
	public String addItemToCart(Authentication authentication,@RequestParam("addToCartQuantity") String quantity,
			@RequestParam("specialInstructions") String specialInstructions,
			@RequestParam("restaurantId") String restaurantId,
			Model model) {
		
		LineItems lineItem = new LineItems();
		
		lineItem.setQuantity(Integer.parseInt(quantity));
		lineItem.setNote(specialInstructions);
		order.getLineItems().add(lineItem);
		
		System.out.println("The Order is " + order);
		for(LineItems item : order.getLineItems()){
			System.out.println("Line Item is " + item);
		}
		
		RestTemplate restTemplate = new RestTemplate();
		Restaurant rest = (Restaurant) restTemplate
				.getForObject("http://localhost:8090/getRestaurantById/"+ restaurantId, Restaurant.class);
		
		Object itemsList =  restTemplate
				.getForObject("http://localhost:8090/getItemListForRestaurant/"+restaurantId, List.class);
		
		System.out.println("MenuItems" +itemsList);
		model.addAttribute("MenuItems",itemsList);
		model.addAttribute("rest",rest);
		
		System.out.println("The Add items wizard values are - Quantity -" + quantity + " -- Instructions --" +specialInstructions );
		User user = (User)authentication.getPrincipal();
		System.out.println("Email is " +user.getUserEmail() + "ID is " + user.getUserId());
		return "RestaurantDetails";
	}

}
