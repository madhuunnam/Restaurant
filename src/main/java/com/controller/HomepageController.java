package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageController extends SpringServletContainerInitializer{

	@RequestMapping("/Homepage")	
	public String homepage(Model model) {
		return "Home";
	}
}









