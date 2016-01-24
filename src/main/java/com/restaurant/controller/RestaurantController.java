package com.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {

	@RequestMapping("/getRestaurantDetailsPage")
	public String homepage(Model model) {
		System.out.println("Testing Restaurant");

		//Connection dbc = DbConnection.getInstance().getDbConnection();

		return "Restaurant";
	}
}
