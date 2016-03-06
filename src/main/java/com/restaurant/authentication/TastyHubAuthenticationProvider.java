package com.restaurant.authentication;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import com.restaurant.model.Customer;

@Component
public class TastyHubAuthenticationProvider implements AuthenticationProvider{

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		String userName= authentication.getName();
		String password = authentication.getCredentials().toString();
		
		List<GrantedAuthority> authorizations = new ArrayList<GrantedAuthority>();
		authorizations.add(new SimpleGrantedAuthority("ROLE_USER"));
		
		
		System.out.println("Trying to Authenticate");
		System.out.println("UserName : "+ userName + "Password : " + password);
		
		return new UsernamePasswordAuthenticationToken(new Customer(),password, authorizations);
	}

	@Override
	public boolean supports(Class<?> authClass) {
		return authClass.equals(UsernamePasswordAuthenticationToken.class);
	}

}
