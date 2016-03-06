package com.restaurant.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.jaas.SecurityContextLoginModule;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomepageController extends SpringServletContainerInitializer {

	@RequestMapping("/getRestaurantListPage")
	public String restaurantListPage(Model model) {
		System.out.println("Testing SearchResult");
		return "RestList";
	}

//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public String login(Model model) {
//		System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
//		return "Homepage";
//
//	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/Homepage";
	}

}
