package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageController extends SpringServletContainerInitializer{

	@RequestMapping("/Homepage")	
	public String homepage(Model model) {
		System.out.println("Testing Spring Boot Application Test 1");
		return "Home";
	}
	
	@RequestMapping("/LoginPage")
	public String LoginPage(Model model) {
		return "Login";
	}
	@RequestMapping("/SignupPage")
	public String SignupPage(Model model) {
		return "Signup";
	}
	
}









