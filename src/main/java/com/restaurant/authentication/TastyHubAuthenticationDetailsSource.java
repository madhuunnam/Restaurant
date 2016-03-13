package com.restaurant.authentication;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.AuthenticationDetailsSource;
import org.springframework.security.web.authentication.WebAuthenticationDetails;

public class TastyHubAuthenticationDetailsSource 
		implements AuthenticationDetailsSource<HttpServletRequest, WebAuthenticationDetails> {

	@Override
	public WebAuthenticationDetails buildDetails(HttpServletRequest context) {

		return new TastyHubAuthenticationDetails(context);
	}
}
