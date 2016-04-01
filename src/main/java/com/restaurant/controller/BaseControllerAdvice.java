package com.restaurant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.restaurant.model.Order;

@ControllerAdvice
public class BaseControllerAdvice {
	
	@Autowired
	private Order order;
	
	@Value("${com.restaurant.services.hostname}")
	private String servicesHostName;
	
	@ModelAttribute("order")
	public Order initializeSessionVariableOrder(Model model){
		model.addAttribute("servicesHost",servicesHostName);
		return order;
	}

}
