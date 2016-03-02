package com.restaurant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.restaurant.model.Customer;
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
	public String registerCustomer(@RequestParam("firstName") String fName, @RequestParam("middleName") String mName,
			@RequestParam("lastName") String lName, @RequestParam("custEmail") String email,
			@RequestParam("custPassword") String pwd, @RequestParam("promoCode") String promoCode,
			@RequestParam("addChannel") String addChannel) {
		
		System.out.println("Testing Customer Registration**");
		Customer cust = new Customer();
		cust.setFirstName(fName);
		cust.setMiddleName(mName);
		cust.setLastName(lName);
		cust.setEmail(email);
		cust.setPassword(pwd);
		cust.setPromoCode(promoCode);
		cust.setAdChannel(addChannel);
		
		ModelAndView model = new ModelAndView("SignUpPages/CustSignUp");
		model.addObject("customer", cust);
		
		//System.out.println(cust.getFirstName());
		//System.out.println(fName + mName + lName + email +pwd + promoCode +addChannel);
		
		 RestTemplate restTemplate = new RestTemplate();
         restTemplate.getForObject("http://localhost:8090/ping",Customer.class);
		return "SignUpPages/CustSignUp";
      // return model;
	}
}
