package com.fpt.services.refproductorder;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.OrderProduct;
import com.fpt.entity.RefProductOrder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RefProductOrderServices {
    void saveRefProductOrder(RefProductOrder refProductOrder);
    public List<RefProductOrder> getBestSellerProductForStatistic();
}
