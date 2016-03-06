package com.restaurant.controller;


import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.restaurant.model.Admin;

@Controller
public class ProfileController extends SpringServletContainerInitializer {

	@RequestMapping("/AdminProfile")
	public String getAdminProfilePage(Model model) {
		return "ProfilePages/AdminProfile";
	}

	@RequestMapping("/updateAdminProfile")
	public ModelAndView updateAdmin(@ModelAttribute("adminModel") Admin admin) {

		RestTemplate restTemplate = new RestTemplate();

		ResponseEntity<String> adminInsertStatus = restTemplate
				.postForEntity("http://localhost:8090/updateAdminProfile", admin, String.class);
		System.out.println("The status is " + adminInsertStatus);
		boolean showalert = true;
		ModelAndView model = new ModelAndView("SignUpPages/AdminSignUp");
		model.addObject("showalert", showalert);
		model.addObject("adminInsertStatus", adminInsertStatus);
		return model;

	}

	@ModelAttribute("updateAdminModel")
	public Admin getNewAdmin() {
		Admin admin = new Admin();
		return admin;
	}

}
