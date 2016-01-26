package com.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUpController {
	
	@RequestMapping("/getCustomerSignUpPage")
	public String customerSignUp(Model model) {
		System.out.println("Testing Customer SignUp PageLoad");
		return "CustomerSignUp";
	}
	@RequestMapping("/getRestaurantSignUpPage")
	public String restaurantSignUp(Model model) {
		System.out.println("Testing Restaurant SignUp PageLoad");
		return "RestaurantSignUp";
	}
	@RequestMapping("/getAssociateSignUpPage")
	public String associateSignUp(Model model) {
		System.out.println("Testing Associate SignUp PageLoad");
		return "AssociateSignUp";
	}
	@RequestMapping("/getAdminSignUpPage")
	public String adminSignUp(Model model) {
		System.out.println("Testing Admin SignUp PageLoad");
		return "AdminSignUp";
	}
}
