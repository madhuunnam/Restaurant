package com.restaurant.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.ProviderManager;

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
    	

		List<AuthenticationProvider> providers = new ArrayList<AuthenticationProvider>();
	    providers.add(tastyHubAuthProvider);
	    
//	    ProviderManager providerManger = new ProviderManager(providers);
//    	providerManger.setEraseCredentialsAfterAuthentication(false);
	    
	    ProviderManager providerManager = (ProviderManager)this.authenticationManager();
	    providerManager.setEraseCredentialsAfterAuthentication(false);
    	auth.authenticationProvider(tastyHubAuthProvider);
    	
    }
	
//	@Bean
//	public AuthenticationSuccessHandler successHandler() {
//	    SimpleUrlAuthenticationSuccessHandler handler = new SimpleUrlAuthenticationSuccessHandler();
//	    
//	    
//	    
//	    if(SecurityContextHolder.getContext().getAuthentication().isAuthenticated()==false){
//	    	handler.setUseReferer(true);
//	    }
//	    
//	    return handler;
//	}
	
	
}
