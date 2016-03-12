package com.restaurant.authentication;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.restaurant.model.Customer;
import com.restaurant.model.User;

@Component
public class TastyHubAuthenticationProvider implements AuthenticationProvider {

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {

		if (authentication != null && authentication.isAuthenticated() == false) {

			String userName = authentication.getName();
			String password = authentication.getCredentials().toString();
			System.out.println("FormInput***" + userName + password);

			List<GrantedAuthority> authorizations = new ArrayList<GrantedAuthority>();
			authorizations.add(new SimpleGrantedAuthority("ROLE_USER"));

			RestTemplate restTemplate = new RestTemplate();
			Customer cust = (Customer) restTemplate
					.getForObject("http://localhost:8090/getCustomer/" + authentication.getName(), Customer.class);

			User user = new User();
			if (cust == null) {
				System.out.println("No User exists with this . Please sign up");
			}


			if (cust != null && cust.getEmail().equals(userName) && cust.getPassword().equals(password)) {
				user.setUserEmail(cust.getEmail());
				user.setUserId(cust.getCustID());
				user.setUserRole("Customer");
				System.out.println(user.getUserEmail());
			} else {
				System.out.println("Username and password not matching. Please enter again!");
			}

			// System.out.println("Trying to Authenticate");
			// System.out.println("UserName : "+ userName + "Password : " +
			// password);
			// Customer customer = new Customer();
			// customer.setFirstName("HellowUser");
			
			Authentication a = new UsernamePasswordAuthenticationToken(user, authorizations);
			return a;
		} else {
			return authentication;
		}
	}

	@Override
	public boolean supports(Class<?> authClass) {
		return authClass.equals(UsernamePasswordAuthenticationToken.class);
	}

}
