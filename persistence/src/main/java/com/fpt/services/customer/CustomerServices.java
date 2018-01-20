package com.fpt.services.customer;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Customer;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CustomerServices {
    List<Customer> getAll();

    void saveCustomer(Customer customer);
}
