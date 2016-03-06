package com.restaurant.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private AuthenticationProvider tastyHubAuthProvider ;
	
	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers(
                		"/images/**",
                		"/javascript/**",
                		"/vendor/**" ,
                		"/assets/**",
                		"/Homepage/**",
                		"/AdminProfile/**"
                ).permitAll()
                .anyRequest().authenticated()
                .and()
            .formLogin()
                .loginPage("/login")
//                .successHandler(successHandler())
                .usernameParameter("email")
                .permitAll()
                .and()
            .logout()
                .permitAll();
    }


	@Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
    	
    	System.out.println("inside Configure Global");
//        auth
//            .inMemoryAuthentication()
//                .withUser("user").password("password").roles("USER");
    	
    	auth.authenticationProvider(tastyHubAuthProvider);
    	
    }
	
	@Bean
	public AuthenticationSuccessHandler successHandler() {
	    SimpleUrlAuthenticationSuccessHandler handler = new SimpleUrlAuthenticationSuccessHandler();
	    handler.setDefaultTargetUrl("/Homepage");
	    return handler;
	}
	
	
}
