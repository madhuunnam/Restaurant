package com.restaurant.controller;

import java.sql.Connection;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.bind.annotation.RequestMapping;

import com.restaurant.dao.DbConnection;

@Controller
public class RestaurantSearchController extends SpringServletContainerInitializer {

	@RequestMapping("/getRestaurantList")
	public String homepage(Model model) {
		System.out.println("Testing SearchResult");

		//Connection dbc = DbConnection.getInstance().getDbConnection();

		return "RestaurantList";
	}
}
