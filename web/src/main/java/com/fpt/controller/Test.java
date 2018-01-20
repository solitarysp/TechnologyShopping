package com.fpt.controller;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.CustomerAddress;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.customeraddress.CustomerAddressServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class Test {
    @Autowired
    CustomerServices customerServices;
    @Autowired
    CustomerAddressServices customerAddressServices;

    @RequestMapping(value = "/test.html")
    public void testGetAll() {
        List<CustomerAddress> customerAddresses = customerAddressServices.getAll();
        for (CustomerAddress customerAddress : customerAddresses
                ) {
            System.out.println(customerAddress.getId() + " " + customerAddress.getEmail()+ " " + customerAddress.getCustomer().getAuthority());
        }
    }
}
