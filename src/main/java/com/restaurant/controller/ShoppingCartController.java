package com.restaurant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.LineItems;
import com.restaurant.model.Order;
import com.restaurant.model.Restaurant;

@Controller
public class ShoppingCartController {
	
	@Autowired
	Order order;
	
	@RequestMapping("/addItemToCart")
	public String addItemToCart(@RequestParam("addToCartQuantity") String quantity,
			@RequestParam("specialInstructions") String specialInstructions,
			@RequestParam("restaurantId") String restaurantId,
			@RequestParam("chValue") String chValue,
			Model model) {
		
		LineItems lineItem = new LineItems();
		
		lineItem.setQuantity(Integer.parseInt(quantity));
		lineItem.setNote(specialInstructions);
		lineItem.setPrice(Float.parseFloat(chValue));
		
		order.getLineItems().add(lineItem);

		RestTemplate restTemplate = new RestTemplate();
		Restaurant rest = (Restaurant) restTemplate
				.getForObject("http://localhost:8090/getRestaurantById/"+ restaurantId, Restaurant.class);
		
		Object itemsList =  restTemplate
				.getForObject("http://localhost:8090/getItemListForRestaurant/"+restaurantId, List.class);
		
		model.addAttribute("MenuItems",itemsList);
		model.addAttribute("rest",rest);
		return "RestaurantDetails";
	}
	
	@RequestMapping("/showCart")
	public String showCart(Model model){
		return "ShoppingCart/CartSummary";
	}

}
