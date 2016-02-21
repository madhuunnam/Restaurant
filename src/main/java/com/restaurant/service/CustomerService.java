package com.restaurant.service;

import com.restaurant.model.Customer;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.net.URI;

@Service
public class CustomerService{

    @Value("${tastyhub.host}")
	private String restServiceBaseURL ;

    @Value("${tastyhub.service.customer.endpoint}")
    private String customerServiceEndPoint;
    
    

    public Customer registerCustomer()  {
        try {
            URI uri = new URI(restServiceBaseURL+customerServiceEndPoint);
            System.out.print("Inside UI Service Component " + uri);
            RestTemplate restTemplate = new RestTemplate();
            restTemplate.getForObject(uri,Customer.class);

            return new Customer();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
