package com.restaurant.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.restaurant.authentication.TastyHubAuthenticationDetails;
import com.restaurant.model.Admin;
import com.restaurant.model.Associate;
import com.restaurant.model.Customer;
import com.restaurant.model.Restaurant;
import com.restaurant.model.User;

@Controller
public class ProfileController extends SpringServletContainerInitializer {

	@RequestMapping("/CustomerProfile")
	public String getCustProfilePage(Model model, Authentication authentication) {

		return "ProfilePages/CustProfile";
	}

	@RequestMapping("/RestaurantProfile")
	public String getRestProfilePage(Model model, Authentication authentication) {

		return "ProfilePages/RestProfile";
	}

	@RequestMapping("/AssociateProfile")
	public String getAssociateProfilePage(Model model, Authentication authentication) {

		return "ProfilePages/AssocProfile";
	}

	@RequestMapping("/AdminProfile")
	public String getAdminProfilePage(Model model, Authentication authentication) {

		return "ProfilePages/AdminProfile";
	}

	@RequestMapping("/updateCustomerProfile")
	public ModelAndView updateCust(@ModelAttribute("updateCustModel") Customer cust) {

		cust.getCustCredit().setCustID(cust.getCustID());
		RestTemplate restTemplate = new RestTemplate();
		String updateStatus = " Profile Update Successful";
		try {
			restTemplate.put("http://localhost:8090/updateCustomerProfile", cust);
		} catch (RestClientException e) {
			updateStatus = " Profile Update Failed";
			e.printStackTrace();
		}

		ModelAndView model = new ModelAndView("ProfilePages/CustProfile");
		model.addObject("showalert", updateStatus);
		return model;

	}

	@RequestMapping("/updateAssocProfile")
	public ModelAndView updateAssoc(@ModelAttribute("updateAssocModel") Associate associate) {

		associate.getAssocPerf().setAssocID(associate.getAssocID());
		RestTemplate restTemplate = new RestTemplate();
		String updateStatus = " Profile Update Successful";
		try {
			restTemplate.put("http://localhost:8090/updateAssociateProfile", associate);
		} catch (RestClientException e) {
			updateStatus = " Profile Update Failed";
			e.printStackTrace();
		}

		ModelAndView model = new ModelAndView("ProfilePages/AssocProfile");
		model.addObject("showalert", updateStatus);
		return model;

	}

	@RequestMapping("/updateRestProfile")
	public ModelAndView updateRestaurant(@ModelAttribute("updateRestModel") Restaurant rest) {
		
		//rest.getRestAdmin().setRestID(rest.getRestID());
		RestTemplate restTemplate = new RestTemplate();
		String updateStatus = " Profile Update Successful";
		try {
			restTemplate.put("http://localhost:8090/updateRestaurantProfile", rest);
		} catch (RestClientException e) {
			updateStatus = " Profile Update Failed";
			e.printStackTrace();
		}

		ModelAndView model = new ModelAndView("ProfilePages/RestProfile");
		model.addObject("showalert", updateStatus);
		return model;

	}

	@RequestMapping("/updateAdminProfile")
	public ModelAndView updateAdmin(@ModelAttribute("updateAdminModel") Admin admin) {

		RestTemplate restTemplate = new RestTemplate();
		String updateStatus = " Profile Update Successful";
		try {
			restTemplate.put("http://localhost:8090/updateAdminProfile", admin);
		} catch (RestClientException e) {
			updateStatus = " Profile Update Failed";
			e.printStackTrace();
		}

		ModelAndView model = new ModelAndView("ProfilePages/AdminProfile");
		model.addObject("showalert", updateStatus);
		return model;

	}

	@ModelAttribute("updateCustModel")
	public Customer getNewCustomer(Customer cust, Authentication authentication) {

		if (authentication != null
				&& ((TastyHubAuthenticationDetails) authentication.getDetails()).getLoggedInAs().contains("Customer")) {

			if (cust == null || (cust != null && (cust.getCustID() == null || cust.getCustID().isEmpty()))) {

				User user = (User) authentication.getPrincipal();
				RestTemplate restTemplate = new RestTemplate();
				cust = (Customer) restTemplate.getForObject("http://localhost:8090/getCustomer/" + user.getUserEmail(),
						Customer.class);
			}
		}
		return cust;
	}

	@ModelAttribute("updateRestModel")
	public Restaurant getNewRestaurant(Restaurant rest, Authentication authentication) {

		if (authentication != null && ((TastyHubAuthenticationDetails) authentication.getDetails()).getLoggedInAs()
				.contains("Restaurant")) {

			if (rest == null || (rest != null && (rest.getRestID() == null || rest.getRestID().isEmpty()))) {

				User user = (User) authentication.getPrincipal();
				RestTemplate restTemplate = new RestTemplate();
				rest = (Restaurant) restTemplate
						.getForObject("http://localhost:8090/getRestaurant/" + user.getUserEmail(), Restaurant.class);
			}
		}
		return rest;
	}

	@ModelAttribute("updateAssocModel")
	public Associate getNewAssociate(Associate assoc, Authentication authentication) {

		if (authentication != null && ((TastyHubAuthenticationDetails) authentication.getDetails()).getLoggedInAs()
				.contains("Associate")) {

			if (assoc == null || (assoc != null && (assoc.getAssocID() == null)  || assoc.getAssocID().isEmpty())) {

				User user = (User) authentication.getPrincipal();
				RestTemplate restTemplate = new RestTemplate();
				assoc = (Associate) restTemplate
						.getForObject("http://localhost:8090/getAssociate/" + user.getUserEmail(), Associate.class);
			}
		}
		return assoc;
	}

	@ModelAttribute("updateAdminModel")
	public Admin getNewAdmin(Admin admin, Authentication authentication) {

		if (authentication != null
				&& ((TastyHubAuthenticationDetails) authentication.getDetails()).getLoggedInAs().contains("Admin")) {

			if (admin == null || (admin != null && admin.getAdminId() == null)) {

				User user = (User) authentication.getPrincipal();
				RestTemplate restTemplate = new RestTemplate();
				admin = (Admin) restTemplate.getForObject("http://localhost:8090/getAdmin/" + user.getUserEmail(),
						Admin.class);
			}
		}
		return admin;
	}

}
