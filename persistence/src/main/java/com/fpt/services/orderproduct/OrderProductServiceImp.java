package com.fpt.services.orderproduct;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.repositories.orderproduct.OrderProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderProductServiceImp implements OrderProductServices {
    @Autowired
    OrderProductRepo orderProductRepo;
}
