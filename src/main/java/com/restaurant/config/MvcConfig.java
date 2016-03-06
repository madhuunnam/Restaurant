package com.restaurant.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class MvcConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/Homepage").setViewName("Home");
     //   registry.addViewController("/").setViewName("Home");
//        registry.addViewController("/hello").setViewName("hello");
        registry.addViewController("/login").setViewName("Login");
    }

}
