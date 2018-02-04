package com.fpt.services.orderproduct;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.OrderProduct;
import com.fpt.repositories.orderproduct.OrderProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderProductServiceImpl implements OrderProductServices {
    @Autowired
    OrderProductRepo orderProductRepo;

    @Override
    public List<OrderProduct> getAll() {
        return orderProductRepo.getAll();
    }

    @Override
    public void saveOrderProduct(OrderProduct orderProduct) {
        orderProductRepo.save(orderProduct);
    }

    @Override
    public Integer getNewOrderByDate(Integer day) {
        return orderProductRepo.getNewOrderByDate(day);
    }
}
