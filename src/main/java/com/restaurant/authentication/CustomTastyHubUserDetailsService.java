//package com.restaurant.authentication;
//
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//import org.springframework.web.client.RestTemplate;
//
//import com.restaurant.model.Customer;
//import com.restaurant.model.User;
//
//@Service("customTastyHubUserDetailsService")
//public class CustomTastyHubUserDetailsService implements UserDetailsService {
//
//	@Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//
//		System.out.println("The User Name in loadUserByUserName is " + username);
//		
//
//		RestTemplate restTemplate = new RestTemplate();
//		Customer cust = (Customer) restTemplate
//				.getForObject("http://localhost:8090/getCustomer/" + username, Customer.class);
//
//		
//		User user = new User();
//		user.setUserId(cust.getCustID());
//		user.setUserEmail(cust.getEmail());
//		user.setPassword(cust.getPassword());
//		user.setUserRole("ROLE_USER");
//		return user;
//	}
//
//}
