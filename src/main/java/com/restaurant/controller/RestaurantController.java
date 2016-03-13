package com.restaurant.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.Choice;
import com.restaurant.model.ChoiceValues;
import com.restaurant.model.Item;
import com.restaurant.model.Section;

@Controller
public class RestaurantController {

	@RequestMapping("/getRestaurantDetailsPage")
	public String restaurantPage(Model model) {
		System.out.println("Testing Restaurant");

		//Connection dbc = DbConnection.getInstance().getDbConnection();

		return "Restaurant";
	}
	
	@RequestMapping("/MenuPage")
	public String getMenuPage(Model model) {
		
		RestTemplate restTemplate = new RestTemplate();

		List<Section> sections = (List<Section>) restTemplate
				.getForObject("http://localhost:8090/getSectionListForRestaurant/1", List.class);
		
		System.out.println("MenuSections" +sections);

		model.addAttribute("MenuSections", sections);
		return "Restaurant/Menu";
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
