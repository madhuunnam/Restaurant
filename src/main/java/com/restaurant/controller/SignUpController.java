package com.restaurant.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.restaurant.model.Customer;
import com.restaurant.model.Restaurant;
import com.restaurant.service.CustomerService;

@Controller
public class SignUpController {

	@Autowired
	private CustomerService customerService;


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
	public ModelAndView registerCustomer(@RequestParam("firstName") String fName, @RequestParam("middleName") String mName,
			@RequestParam("lastName") String lName, @RequestParam("custEmail") String email,
			@RequestParam("custPassword") String pwd, @RequestParam("promoCode") String promoCode,
			@RequestParam("addChannel") String addChannel) {
		
		Customer cust = new Customer();
		cust.setFirstName(fName);
		cust.setMiddleName(mName);
		cust.setLastName(lName);
		cust.setEmail(email);
		cust.setPassword(pwd);
		cust.setPromoCode(promoCode);
		
		cust.setAdChannel(addChannel);
		cust.setInsertDate(new Date());
		
		RestTemplate restTemplate = new RestTemplate();	
		
		ResponseEntity<String> insertStatus = restTemplate.postForEntity("http://localhost:8090/signUpCustomer", cust, String.class);
		System.out.println("The status is " + insertStatus);
		boolean showalert = true;
		ModelAndView model = new ModelAndView("SignUpPages/CustSignUp");
		model.addObject("showalert", showalert);
		model.addObject("insertStatus", insertStatus);
		
		return model;
	}
	
	@RequestMapping("/registerRestaurant")
	public ModelAndView registerRestaurant(@ModelAttribute("restaurantModel") Restaurant restaurant){
		
		System.out.println(restaurant.getBankName());
		RestTemplate restTemplate = new RestTemplate();	
		
		restaurant.setInsertDate(new Date());
		
		ResponseEntity<String> restInsertStatus = restTemplate.postForEntity("http://localhost:8090/signUpRestaurant", restaurant, String.class);
		System.out.println("The status is " + restInsertStatus);
		boolean showalert = true;
		ModelAndView model = new ModelAndView("SignUpPages/RestSignUp");
		model.addObject("showalert", showalert);
		model.addObject("restInsertStatus", restInsertStatus);
		return model;
		
	}
	
	@ModelAttribute("restaurantModel")
	 public Restaurant getNewRestaurant() {
		Restaurant restaurant = new Restaurant();
		return restaurant;
	 }
	
}
