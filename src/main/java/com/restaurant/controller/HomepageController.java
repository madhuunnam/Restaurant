package com.restaurant.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.restaurant.model.Restaurant;

@Controller
public class HomepageController extends SpringServletContainerInitializer {
	
	@RequestMapping("/LoginPage")
	public String loginPage(Authentication auth ){
		if(!auth.isAuthenticated()){
			return "Login";
		}else{
			return "Homepage";
		}
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
