package com.restaurant.controller;

import java.util.Date;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.restaurant.model.Admin;
import com.restaurant.model.AssocPerf;
import com.restaurant.model.Associate;
import com.restaurant.model.CustCredit;
import com.restaurant.model.Customer;
import com.restaurant.model.RestAdmin;
import com.restaurant.model.Restaurant;

@Controller
public class SignUpController {

	@RequestMapping("/getCustomerSignUpPage")
	public String customerSignUp(Model model) {
		System.out.println("Testing Customer SignUp PageLoad");
		return "SignUpPages/CustSignUp";
	}
	@RequestMapping("/getRestaurantSignUpPage")
	public String restaurantSignUp(Model model) {
		System.out.println("Testing Restaurant SignUp PageLoad");
		return "SignUpPages/RestSignUp";
	}
	@RequestMapping("/getAssociateSignUpPage")
	public String associateSignUp(Model model) {
		System.out.println("Testing Associate SignUp PageLoad");
		return "SignUpPages/AssocSignUp";
	}
	@RequestMapping("/getAdminSignUpPage")
	public String adminSignUp(Model model) {
		System.out.println("Testing Admin SignUp PageLoad");
		return "SignUpPages/AdminSignUp";
	}

	@RequestMapping("/registerCustomer")
	public ModelAndView registerCustomer(@ModelAttribute("customerModel") Customer cust, @ModelAttribute("custCreditModel") CustCredit cCredit) {
		
		RestTemplate restTemplate = new RestTemplate();	
		
		cust.setInsertDate(new Date());
		
		ResponseEntity<String> insertStatus = restTemplate.postForEntity("http://localhost:8090/signUpCustomer", cust, String.class);
		String custId  = restTemplate.getForObject("http://localhost:8090/getNewCustomerId", String.class);
		ResponseEntity<String> custCreditInsertStatus = restTemplate.postForEntity("http://localhost:8090/addToCustCredit/"+custId, cCredit, String.class);
		
		System.out.println("The status is " + insertStatus);
		boolean showalert = true;
		ModelAndView model = new ModelAndView("SignUpPages/CustSignUp");
		model.addObject("showalert", showalert);
		model.addObject("insertStatus", insertStatus);
		model.addObject("custCreditInsertStatus", custCreditInsertStatus);
		return model;
	}
	
	@RequestMapping("/registerRestaurant")
	public ModelAndView registerRestaurant(@ModelAttribute("restaurantModel") Restaurant restaurant, @ModelAttribute("restAdminModel") RestAdmin restAdmin){
		
		RestTemplate restTemplate = new RestTemplate();	
		
		restaurant.setInsertDate(new Date());
		
		System.out.println("LATITUDE -- " + restaurant.getLatitude());
		System.out.println("LONGITUDE -- " + restaurant.getLongitude());
		
		ResponseEntity<String> restInsertStatus = restTemplate.postForEntity("http://localhost:8090/signUpRestaurant", restaurant, String.class);
		String restId  = restTemplate.getForObject("http://localhost:8090/getNewRestaurantId", String.class);
		ResponseEntity<String> restAdminInsertStatus = restTemplate.postForEntity("http://localhost:8090/addToRestAdmin/"+restId, restAdmin, String.class);
		
		System.out.println("The status is " + restInsertStatus+restAdminInsertStatus);
		boolean showalert = true;
		
		ModelAndView model = new ModelAndView("SignUpPages/RestSignUp");
		model.addObject("showalert", showalert);
		model.addObject("restInsertStatus", restInsertStatus);
		model.addObject("restAdminInsertStatus", restAdminInsertStatus);
		return model;
		
	}
	
	@RequestMapping("/registerAssociate")
	public ModelAndView registerRestaurant(@ModelAttribute("associateModel") Associate associate, @ModelAttribute("assocPerfModel") AssocPerf assocPerf){
		
		RestTemplate restTemplate = new RestTemplate();	
		
		associate.setInsertDate(new Date());
		
		ResponseEntity<String> assocInsertStatus = restTemplate.postForEntity("http://localhost:8090/signUpAssociate", associate, String.class);
		String assocId  = restTemplate.getForObject("http://localhost:8090/getNewAssociateId", String.class);
		ResponseEntity<String> assocPerfInsertStatus = restTemplate.postForEntity("http://localhost:8090/addToAssocPerf/"+assocId, assocPerf, String.class);
		
		System.out.println("The status is " + assocInsertStatus);
		boolean showalert = true;
		ModelAndView model = new ModelAndView("SignUpPages/AssocSignUp");
		model.addObject("showalert", showalert);
		model.addObject("assocInsertStatus", assocInsertStatus);
		model.addObject("assocPerfInsertStatus", assocPerfInsertStatus);
		return model;
		
	}
	@RequestMapping("/registerAdmin")
	public ModelAndView registerAdmin(@ModelAttribute("adminModel") Admin admin){
		
		RestTemplate restTemplate = new RestTemplate();	
		
		admin.setInsertDate(new Date());
		System.out.println(admin.getSecQuest());
		ResponseEntity<String> adminInsertStatus = restTemplate.postForEntity("http://localhost:8090/signUpAdmin", admin, String.class);
		System.out.println("The status is " + adminInsertStatus);
		boolean showalert = true;
		ModelAndView model = new ModelAndView("SignUpPages/AdminSignUp");
		model.addObject("showalert", showalert);
		model.addObject("adminInsertStatus", adminInsertStatus);
		return model;
		
	}
	
	@ModelAttribute("restaurantModel")
	 public Restaurant getNewRestaurant() {
		Restaurant restaurant = new Restaurant();
		return restaurant;
	 }
	@ModelAttribute("customerModel")
	 public Customer getNewCustomer() {
		Customer cust = new Customer();
		return cust;
	 }
	@ModelAttribute("associateModel")
	public Associate getNewAssociate() {
		Associate assoc = new Associate();
		return assoc;
	}
	@ModelAttribute("adminModel")
	public Admin getNewAdmin(){
		Admin admin = new Admin();
		return admin;
	}

	@ModelAttribute("restAdminModel")
	public RestAdmin getNewRestAdmin(){
		RestAdmin restAdmin = new RestAdmin();
		return restAdmin;
	}
	@ModelAttribute("custCreditModel")
	public CustCredit getNewCustCredit(){
		CustCredit custCredit = new CustCredit();
		return custCredit;
	}
	@ModelAttribute("assocPerfModel")
	public AssocPerf getNewAssocPerf(){
		AssocPerf assocPerf = new AssocPerf();
		return assocPerf;
	}
}
