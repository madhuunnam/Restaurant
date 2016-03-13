package com.restaurant.authentication;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.web.authentication.WebAuthenticationDetails;

public class TastyHubAuthenticationDetails extends WebAuthenticationDetails {

	private static final long serialVersionUID = 1605192236966059825L;
	
	private final String loggedInAs;

    public TastyHubAuthenticationDetails(HttpServletRequest request) {
        super(request);
        loggedInAs = request.getParameter("radio");
    }

    public String getLoggedInAs(){
        return loggedInAs;
    }

   
}

