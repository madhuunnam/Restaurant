package com.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUpController {
	
	@RequestMapping("/getCustomerSignUpPage")
	public String customerSignUp(Model model) {
		System.out.println("Testing Customer SignUp PageLoad");
		return "CustSignUp";
	}
	@RequestMapping("/getRestaurantSignUpPage")
	public String restaurantSignUp(Model model) {
		System.out.println("Testing Restaurant SignUp PageLoad");
		return "RestSignUp";
	}
	@RequestMapping("/getAssociateSignUpPage")
	public String associateSignUp(Model model) {
		System.out.println("Testing Associate SignUp PageLoad");
		return "AssocSignUp";
	}
	@RequestMapping("/getAdminSignUpPage")
	public String adminSignUp(Model model) {
		System.out.println("Testing Admin SignUp PageLoad");
		return "AdminSignUp";
	}

	@RequestMapping("/registerCustomer")
	public String registerCustomer(Model model) {
		System.out.println("Testing Admin SignUp PageLoad");
		return "CustSignUp";
	}
}
