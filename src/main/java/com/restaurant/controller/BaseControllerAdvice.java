package com.restaurant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.restaurant.model.Order;

@ControllerAdvice
public class BaseControllerAdvice {
	
	@Autowired
	private Order order;
	
	@ModelAttribute("order")
	public Order initializeSessionVariableOrder(){
		return order;
	}

}
