package com.restaurant.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.User;

@Controller
public class CustomerController {

	@RequestMapping("/Review")
	public String getCustomerAccountPage(Model model) {

		return "CustomerPages/Review";
	}

	@RequestMapping("/CustomerActiveOrder")
	public String getCustomerOrderPage(Model model,Authentication authentication) {
		
		User user = (User)authentication.getPrincipal();
		RestTemplate restTemplate = new RestTemplate();
		Object ordersList =  restTemplate
				.getForObject("http://localhost:8090/getOrderListForCustomer/"+user.getUserId(), List.class);
		
		model.addAttribute("custActiveOrders",ordersList);
		return "CustomerPages/CustActiveOrder";
		
	}
}
