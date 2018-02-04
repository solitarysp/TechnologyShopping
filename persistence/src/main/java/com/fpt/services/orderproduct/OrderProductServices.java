package com.fpt.services.orderproduct;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.OrderProduct;
import com.fpt.entity.RefProductOrder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderProductServices {
    public List<OrderProduct> getAll();

    void saveOrderProduct(OrderProduct orderProduct);

    public Integer getNewOrderByDate(Integer day);

    public Integer totalOrder();

     OrderProduct getOrderByID(Integer id);
}
