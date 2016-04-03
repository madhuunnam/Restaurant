package com.restaurant.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.restaurant.authentication.TastyHubAuthenticationDetailsSource;
import com.restaurant.authentication.TastyHubAuthenticationProvider;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authenticationProvider(new TastyHubAuthenticationProvider())
				.authorizeRequests()

				.antMatchers("/images/**", "/javascript/**", "/vendor/**", "/assets/**", "/Homepage/**",
						"/SignupPage/**", "/registerCustomer/**", "/Contact/**", "/About/**", "/forSale/**",
						"/getCustomerSignUpPage/**", "/Hiring/**", "/getRestaurantSignUpPage/**",
						"/getAssociateSignUpPage/**", "/getRestaurantListPage/**", "/getAdminSignUpPage/**",
						"/getRestaurantDetailsPage/**", "/registerRestaurant/**", "/registerAssociate/**",
						"/registerAdmin/**","/CustomerPages/**")
				.permitAll().anyRequest().authenticated().and().formLogin().loginPage("/login")
				.authenticationDetailsSource(new TastyHubAuthenticationDetailsSource())
				.usernameParameter("email").permitAll().and().logout().permitAll();
	}

	
}
