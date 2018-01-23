package com.fpt.services.customeraddress;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.CustomerAddress;
import com.fpt.repositories.customeraddress.CustomerAddressRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerAddressServiceImp implements CustomerAddressServices {
    @Autowired
    CustomerAddressRepo customerAddressRepo;

    @Override
    public List<CustomerAddress> getAll() {
        return customerAddressRepo.getAll();
    }

    @Override
    public void saveCustomerAddress(CustomerAddress customerAddress) {
        customerAddressRepo.save(customerAddress);
    }
}
