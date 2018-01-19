package com.fpt.controller;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Customer;
import com.fpt.services.customer.CustomerServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class Test {
    @Autowired
    CustomerServices customerServices;

    @RequestMapping(value = "/test.html")
    public void testGetAll() {
        List<Customer> customers = customerServices.getAll();
        for (Customer customer : customers
                ) {
            System.out.println(customer.getId() + " " + customer.getEmail());
        }
    }
}
