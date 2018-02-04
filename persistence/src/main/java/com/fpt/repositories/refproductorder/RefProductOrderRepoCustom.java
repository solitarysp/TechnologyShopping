package com.fpt.repositories.refproductorder;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.RefProductOrder;

import java.util.List;

public interface RefProductOrderRepoCustom {
    public List<RefProductOrder> getBestSellerProductForStatistic();
}
