package com.restaurant;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication
@Controller
public class RestaurantApplication {
	
	@ResponseBody
	@RequestMapping("/Homepage")
	String homepage() {
		return "Homepage";
	}
    public static void main(String[] args) {
    		
    	 
        SpringApplication.run(RestaurantApplication.class, args);
    }
}
