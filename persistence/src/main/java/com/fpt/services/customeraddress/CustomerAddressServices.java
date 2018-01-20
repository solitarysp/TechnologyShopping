package com.fpt.services.customeraddress;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.CustomerAddress;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CustomerAddressServices {
    List<CustomerAddress> getAll();
}
