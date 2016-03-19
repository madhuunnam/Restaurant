package com.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {

	@RequestMapping("/Review")
	public String getCustomerAccountPage(Model model) {
		
		return "CustomerPages/Review";
	}
}
