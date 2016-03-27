package com.restaurant.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class MvcConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
//        registry.addViewController("/Homepage").setViewName("Home");
        registry.addViewController("/SignupPage").setViewName("SignUpPages/Signup");
        registry.addViewController("/LoginPage").setViewName("Login");
        registry.addViewController("/forSale").setViewName("forSale");
        registry.addViewController("/hiring").setViewName("hiring");
        registry.addViewController("/About").setViewName("About");
        registry.addViewController("/Contact").setViewName("Contact");
        registry.addViewController("/login").setViewName("Login");
    }

}
