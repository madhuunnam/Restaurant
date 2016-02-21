package com.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.Customer;

@Controller
public class SignUpController {

	
	@RequestMapping("/getCustomerSignUpPage")
	public String customerSignUp(Model model) {
		System.out.println("Testing Customer SignUp PageLoad");
		return "SignUpPages/CustSignUp";
	}
	@RequestMapping("/getRestaurantSignUpPage")
	public String restaurantSignUp(Model model) {
		System.out.println("Testing Restaurant SignUp PageLoad");
		return "SignUpPages/RestSignUp";
	}
	@RequestMapping("/getAssociateSignUpPage")
	public String associateSignUp(Model model) {
		System.out.println("Testing Associate SignUp PageLoad");
		return "SignUpPages/AssocSignUp";
	}
	@RequestMapping("/getAdminSignUpPage")
	public String adminSignUp(Model model) {
		System.out.println("Testing Admin SignUp PageLoad");
		return "SignUpPages/AdminSignUp";
	}

	@RequestMapping("/registerCustomer")
	public String registerCustomer(Model model) {
		System.out.println("Testing Admin SignUp PageLoad");
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.getForObject("http://localhost:8090/ping", Customer.class);
		return "SignUpPages/CustSignUp";
	}
}
