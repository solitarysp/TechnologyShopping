package com.fpt.repositories.producttype;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.ProductType;

import java.util.List;

public interface ProductTypeCustom {
    public List<ProductType> getAllProductTypeByName(String name);
}
