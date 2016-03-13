package com.restaurant.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.restaurant.authentication.TastyHubAuthenticationDetailsSource;
import com.restaurant.authentication.TastyHubAuthenticationProvider;

@Configuration
@EnableWebSecurity
//@ComponentScan(basePackageClasses = CustomTastyHubUserDetailsService.class)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

//	@Autowired
//	private UserDetailsService userDetailsService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
				.authenticationProvider(new TastyHubAuthenticationProvider())
//				.userDetailsService(userDetailsService)
				.authorizeRequests()
				
				.antMatchers("/images/**", "/javascript/**", "/vendor/**", "/assets/**", "/Homepage/**",
						"/SignupPage/**","/Contact/**","/About/**","/forSale/**","/getCustomerSignUpPage/**",
						"/Hiring/**","/getRestaurantSignUpPage/**","/getAssociateSignUpPage/**","/getAdminSignUpPage/**")
				.permitAll().anyRequest().authenticated().and().formLogin().loginPage("/login")
				.authenticationDetailsSource(new TastyHubAuthenticationDetailsSource())
				// .successHandler(successHandler())
				.usernameParameter("email").permitAll().and().logout().permitAll();
	}

}
