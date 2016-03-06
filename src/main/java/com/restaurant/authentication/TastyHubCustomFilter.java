package com.restaurant.authentication;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

public class TastyHubCustomFilter extends UsernamePasswordAuthenticationFilter{
	
	@Override
	public Authentication attemptAuthentication(HttpServletRequest request,
			HttpServletResponse response) throws AuthenticationException {
		
		System.out.println("Inside Custom Filter");
		Authentication authentication = super.attemptAuthentication(request, response);
		
		return authentication;
	}

}
