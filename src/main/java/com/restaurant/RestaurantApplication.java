package com.restaurant;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableAutoConfiguration
@ComponentScan({"com.controller","com.restaurant"})
public class RestaurantApplication {
	

	
	public static void main(String[] args) {
		SpringApplication.run(RestaurantApplication.class, args);
	}
}
