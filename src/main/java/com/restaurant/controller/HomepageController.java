package com.restaurant.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.Restaurant;

@Controller
public class HomepageController extends SpringServletContainerInitializer {

	@RequestMapping("/getRestaurantListPage")
	public String restaurantListPage(Model model) {
		
		RestTemplate restTemplate = new RestTemplate();

		List<Restaurant> restList = (List<Restaurant>) restTemplate
				.getForObject("http://localhost:8090/getRestaurantList", List.class);
		
		model.addAttribute("restList", restList);
		return "RestList";
		
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/Homepage";
	}
	
	
}
