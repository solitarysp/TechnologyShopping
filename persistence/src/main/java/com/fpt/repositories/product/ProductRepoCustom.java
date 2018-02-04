package com.fpt.repositories.product;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Product;

import java.util.List;

public interface ProductRepoCustom {
    List<Product> getProductsPage(String name, Integer page, Integer limit);
    Long getCountProductsPage(String name);
    List<Product> getProductByCategoriesHasLimit(Integer id,Integer page,Integer limit);
    Long getCountProductByCategoriesHasLimit(Integer id);
    List<Product> getProductHasL21imit(Integer page, Integer limit);
}
