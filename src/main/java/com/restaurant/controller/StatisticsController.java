package com.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.AdminStatistics;
import com.restaurant.model.Restaurant;

@Controller
public class StatisticsController {
	
	@RequestMapping("/AssociateStatistics")
	public String getAssociateStatPage(Model model) {
		
		return "StatisticsPages/AssocStatistics";
	}
	@RequestMapping("/RestaurantStatistics")
	public String getRestaurantStatPage(Model model) {
		
		return "StatisticsPages/RestStatistics";
	}
	
	@RequestMapping("/AdminStatistics")
	public String getAdminStatPage(Model model) {
		
		RestTemplate restTemplate = new RestTemplate();
		
		AdminStatistics stats = (AdminStatistics) restTemplate
				.getForObject("http://localhost:8090/getAdminStatistics", AdminStatistics.class);
		
		model.addAttribute("stats",stats);
		return "StatisticsPages/AdminStatistics";
		
	}
	@RequestMapping("/AdminLookUp")
	public String getAdminLookUpPage(Model model) {
		
		return "StatisticsPages/AdminLookUp";
	}
	
}
