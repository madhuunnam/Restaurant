package com.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageController extends SpringServletContainerInitializer {

	@RequestMapping("/Homepage")
	public String homepage(Model model) {
		System.out.println("Testing Spring Boot Application Test 1");
		return "Home";
	}

	@RequestMapping("/LoginPage")
	public String loginPage(Model model) {
		return "Login";
	}

	@RequestMapping("/SignupPage")
	public String signupPage(Model model) {
		return "Signup";
	}

	@RequestMapping("/forSale")
	public String forSale(Model model) {
		return "forSale";
	}
	
	@RequestMapping("/hiring")
	public String hiring(Model model) {
		return "hiring";
	}

	@RequestMapping("/About")
	public String aboutPage(Model model) {
		return "About";
	}

	@RequestMapping("/Contact")
	public String contactPage(Model model) {
		return "Contact";
	}
	
	@RequestMapping("/getRestaurantListPage")
	public String restaurantListPage(Model model) {
		System.out.println("Testing SearchResult");

		//Connection dbc = DbConnection.getInstance().getDbConnection();

		return "RestList";
	}

}
