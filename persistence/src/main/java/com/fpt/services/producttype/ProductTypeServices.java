package com.fpt.services.producttype;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.ProductType;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductTypeServices {
    List<ProductType> getAllProductType();

    void saveProductType(ProductType productType);

    void deleteProductType(ProductType productType);

    ProductType findByID(Integer id);
}
