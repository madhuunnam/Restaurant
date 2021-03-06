package com.restaurant.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.SpringServletContainerInitializer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.restaurant.model.Admin;
import com.restaurant.model.Associate;
import com.restaurant.model.Customer;
import com.restaurant.model.Restaurant;
import com.restaurant.model.User;

@Controller
public class HomepageController extends SpringServletContainerInitializer {
	
	@Autowired
    private JavaMailSender javaMailSender;
	
	@RequestMapping("/LoginPage")
	public String loginPage(Authentication auth ){
		if( auth!=null && !auth.isAuthenticated()){
			return "Login";
		}else{
			return "Homepage";
		}
	}
	
	@RequestMapping(value="/ForgotPasswordEmail",method = RequestMethod.POST )
	public String sendEmailForPassword(Authentication auth, @RequestParam("email") String userEmail, @RequestParam("radio") String userType){
		
		System.out.println("EMAIL GIVEN****"+userEmail);
		System.out.println("User Role****"+userType);
		User user = new User();
		RestTemplate restTemplate = new RestTemplate();
		if(userType.equals("As Customer")){
			Customer cust = (Customer) restTemplate.getForObject("http://localhost:8090/getCustomer/" + userEmail,
				Customer.class);
			user.setPassword(cust.getPassword());
		}else if (userType.equals("As Restaurant Partner")){
			Restaurant rest = (Restaurant) restTemplate.getForObject("http://localhost:8090/getRestaurant/" + userEmail,
					Restaurant.class);
			user.setPassword(rest.getPassword());
		}else if (userType.equals("As Associate")){
			Associate assoc = (Associate) restTemplate.getForObject("http://localhost:8090/getAssociate/" + userEmail,
					Associate.class);
			user.setPassword(assoc.getPassword());
		}else if (userType.equals("As Admin")){
			Admin admin = (Admin) restTemplate.getForObject("http://localhost:8090/getAdmin/" + userEmail,
					Admin.class);
			user.setPassword(admin.getPassword());
		}
		if ((!user.getPassword().equals("")) || (!user.getPassword().equals(""))){
			System.out.println("USER EXISTS %%%%%");
			MimeMessage mail = javaMailSender.createMimeMessage();
	        try {
	            MimeMessageHelper helper = new MimeMessageHelper(mail, true);
	            helper.setTo(userEmail);
	            helper.setSubject("Password Request");
	            helper.setText("Your profile password is "+user.getPassword()+". We recommend you to login and change your password in your profile screen!");
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        } finally {}
	        javaMailSender.send(mail);
			}
		else {
			System.out.println("User does not exist &&&&&&&");
		}
        return "/Login";
		
	}

	@RequestMapping("/getRestaurantListPage")
	public String restaurantListPage(Model model, 
			@RequestParam("latitude") String latitude,
			@RequestParam("longitude") String longitude,
			@RequestParam("cuisine")String[] cuisinesSelected,
			@RequestParam("city") String city,
			@RequestParam("state") String state) {
		
		RestTemplate restTemplate = new RestTemplate();
		
		List objList = restTemplate
				.getForObject("http://localhost:8090/getRestaurantList", List.class);
		
		List<Restaurant> restList = new ArrayList<Restaurant>();
		
		for(Object obj : objList){
			try {
				ObjectMapper mapper = new ObjectMapper();
//				System.out.println(mapper.writerWithDefaultPrettyPrinter().writeValueAsString(rest));
				Restaurant rest = mapper.readValue(mapper.writeValueAsString(obj), Restaurant.class);
				restList.add(rest);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		calculateDistanceFromSearchLocation(restList,latitude,longitude);
		restList = filterBasedOnState(restList,state);
		restList = filterBasedOnCity(restList,city);
		restList = filterBasedOnCuisines(restList,cuisinesSelected);
		
		Collections.sort(restList);
		
		
		
		model.addAttribute("restList", restList);
		return "RestList";
		
	}

	private List<Restaurant>  filterBasedOnCuisines(List<Restaurant> restList, String[] cuisinesSelected) {
		List<Restaurant> filteredList = new ArrayList<Restaurant>();
		if(cuisinesSelected !=null && cuisinesSelected.length > 1 ){
			
			List<String> cuisines = Arrays.asList(cuisinesSelected);
			for(int i=0;i<restList.size();i++){
				Restaurant rest = restList.get(i);
				if(rest.getCategories()!=null && !rest.getCategories().isEmpty() && cuisines.contains(rest.getCategories())){
					System.out.println("Adding Cuisine " + rest.getCategories());
					filteredList.add(rest);
				}
			}
			return filteredList;
		}else{
			return restList;
		}
		
	}

	private List<Restaurant>  filterBasedOnState(List<Restaurant> restList, String state) {
		
		List<Restaurant> filteredList = new ArrayList<Restaurant>();
		if(state !=null && !state.isEmpty()){
			for(int i=0;i<restList.size();i++){
				Restaurant rest = restList.get(i);
				if(rest.getState()!=null && !rest.getState().isEmpty() && state.equalsIgnoreCase(rest.getState())){
					System.out.println("Adding state " + rest.getState());
					filteredList.add(rest);
				}
			}
			return filteredList;
		}else{
			return restList;
		}
	}
	
	private List<Restaurant>  filterBasedOnCity(List<Restaurant> restList, String city) {
		List<Restaurant> filteredList = new ArrayList<Restaurant>();
		if(city !=null && !city.isEmpty()){
			for(int i=0;i<restList.size();i++){
				Restaurant rest = restList.get(i);
				if(rest.getCity()!=null && !rest.getCity().isEmpty() && city.equalsIgnoreCase(rest.getCity())){
					System.out.println("Adding City " + rest.getCity());
					filteredList.add(rest);
				}
			}
			return filteredList;
		}else{
			return restList;
		}
		
	}

	private void calculateDistanceFromSearchLocation(List<Restaurant> restList,String latitude,String longitude) {
		
		for(Restaurant restaurant : restList){
			restaurant.setDistanceFromSearchLocation(calculateDistance(Float.toString(restaurant.getLatitude()),Float.toString(restaurant.getLongitude()),latitude,longitude));
		}
	}



	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/Homepage";
	}
	
	@RequestMapping(value = "/Homepage", method = RequestMethod.GET)
	public String homePage() {
		return "Home";
	}
	
	private float calculateDistance(String latitude1, String longitude1, String latitude2, String longitude2) {
		
		double lat1 = Double.parseDouble(latitude1);
		double lon1 = Double.parseDouble(longitude1);
		double lat2 = Double.parseDouble(latitude2);
		double lon2 = Double.parseDouble(longitude2);
		
		double theta = lon1 - lon2;
		double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));
		dist = Math.acos(dist);
		dist = rad2deg(dist);
		dist = dist * 60 * 1.1515;
		return Float.parseFloat(Double.toString(dist));
	}
	
	/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
	/*::	This function converts decimal degrees to radians						 :*/
	/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
	private static double deg2rad(double deg) {
		return (deg * Math.PI / 180.0);
	}

	/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
	/*::	This function converts radians to decimal degrees						 :*/
	/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
	private static double rad2deg(double rad) {
		return (rad * 180 / Math.PI);
	}
	
}
