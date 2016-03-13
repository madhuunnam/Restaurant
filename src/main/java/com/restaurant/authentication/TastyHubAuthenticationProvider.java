package com.restaurant.authentication;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.Associate;
import com.restaurant.model.Customer;
import com.restaurant.model.Restaurant;
import com.restaurant.model.User;

public class TastyHubAuthenticationProvider implements AuthenticationProvider {

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String name = authentication.getName();
		String password = authentication.getCredentials().toString();
		System.out.println(name + password + " TEST   ");
		List<GrantedAuthority> grantedAuths = new ArrayList<GrantedAuthority>();

		String loggedInAs = ((TastyHubAuthenticationDetails) authentication.getDetails()).getLoggedInAs();

		SimpleGrantedAuthority simpleGrantedAuthority = new SimpleGrantedAuthority(loggedInAs);
		grantedAuths.add(simpleGrantedAuthority);

		User user = null;
		if (loggedInAs != null && loggedInAs.contains("Customer")) {

			System.out.println("Logged in As Customer. Hence calling getCustomer REST service");
			RestTemplate restTemplate = new RestTemplate();
			Customer cust = (Customer) restTemplate.getForObject("http://localhost:8090/getCustomer/" + name,
					Customer.class);

			if (cust != null) {

				if (password != null && (password.equals(cust.getPassword()) == false)) {
					throw new InsufficientAuthenticationException("Password Doesnt Match");
				} else {
					user = new User();
					user.setUserEmail(cust.getEmail());
					user.setPassword(cust.getPassword());
					user.setUserId(cust.getCustID());
				}
			} else {
				System.out.println("Throwing Authentication Exception as Customer is null");
				throw new AuthenticationCredentialsNotFoundException("User Not Found");
			}
		}else if (loggedInAs != null && loggedInAs.contains("Restaurant")) {

			System.out.println("Logged in As Restaurant. Hence calling getRestaurant REST service");
			RestTemplate restTemplate = new RestTemplate();
			Restaurant restaurant= (Restaurant) restTemplate.getForObject("http://localhost:8090/getRestaurant/" + name,
					Restaurant.class);

			if (restaurant != null) {

				if (password != null && (password.equals(restaurant.getPassword()) == false)) {
					throw new InsufficientAuthenticationException("Password Doesnt Match");
				} else {
					user = new User();
					user.setUserEmail(restaurant.getEmail());
					user.setPassword(restaurant.getPassword());
					user.setUserId(restaurant.getRestID());
				}
			} else {
				System.out.println("Throwing Authentication Exception as Restaurant is null");
				throw new AuthenticationCredentialsNotFoundException("User Not Found");
			}
		}else if(loggedInAs != null && loggedInAs.contains("Associate")) {

			System.out.println("Logged in As Associate. Hence calling getAssociate REST service");
			RestTemplate restTemplate = new RestTemplate();
			Associate associate= (Associate) restTemplate.getForObject("http://localhost:8090/getAssociate/" + name,
					Associate.class);

			if (associate != null) {

				if (password != null && (password.equals(associate.getPassword()) == false)) {
					throw new InsufficientAuthenticationException("Password Doesnt Match");
				} else {
					user = new User();
					user.setUserEmail(associate.getEmail());
					user.setPassword(associate.getPassword());
					user.setUserId(associate.getAssocID());
				}
			} else {
				System.out.println("Throwing Authentication Exception as Associate is null");
				throw new AuthenticationCredentialsNotFoundException("User Not Found");
			}
		}
		
		if(user !=null){
			return new UsernamePasswordAuthenticationToken(user, password, grantedAuths);
		} else {
			throw new AuthenticationCredentialsNotFoundException("Authentication Failed");
		}

	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}
}
