package com.fpt.services.customer;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Customer;
import com.fpt.repositories.customer.CustomerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerServices {
    @Autowired
    CustomerRepo customerRepo;

    @Override
    public List<Customer> getAll() {
        return customerRepo.getAll();
    }

    @Transactional
    @Override
    public void saveCustomer(Customer customer) {
        customerRepo.save(customer);
    }

    @Override
    public boolean isCustomerEmail(String email) {
        return customerRepo.isCustomerEmail(email);
    }

    @Override
    public boolean isCustomerUser(String User) {
        return customerRepo.isCustomerUser(User);
    }

    @Override
    public long countCustomer() {
        return customerRepo.count();
    }
}
