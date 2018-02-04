package com.fpt.services.customeraddress;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.CustomerAddress;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CustomerAddressServices {
    List<CustomerAddress> getAll();

    void saveCustomerAddress(CustomerAddress customerAddress);
    public List<CustomerAddress> getAddressByIDCustomer(Integer id);
    public void deleteCustomerAddressById(Integer id);
}
