package com.fpt.controller;/*
  By Chi Can Em  30-01-2018
 */

import com.fpt.entity.Customer;
import com.fpt.services.customer.CustomerServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;

@Controller
public class RegistrationController {
    @Autowired
    CustomerServices customerServices;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String getShowFromRegistration() {
        return "Registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public void doRegistration(ModelMap modelMap, Customer customer, HttpServletResponse response) {
        customerServices.saveCustomer(customer);
    }
}
