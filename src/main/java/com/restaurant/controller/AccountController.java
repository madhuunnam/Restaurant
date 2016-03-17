package com.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController {
	
	@RequestMapping("/CustomerAccount")
	public String getCustomerAccountPage(Model model) {
		
		return "AccountPages/CustAccnt";
	}
	
	@RequestMapping("/AssociateAccount")
	public String getAssociateAccountPage(Model model) {
		
		return "AccountPages/AssocAccnt";
	}
	@RequestMapping("/RestaurantAccount")
	public String getRestaurantAccountPage(Model model) {
		
		return "AccountPages/RestAccnt";
	}
	
	@RequestMapping("/AdminAccount")
	public String getAdminAccountPage(Model model) {
		
		return "AccountPages/AdminAccnt";
	}
	
}
