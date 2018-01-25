package com.fpt.services.producttype;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.ProductType;
import com.fpt.repositories.producttype.ProductTypeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductTypeServiceImp implements ProductTypeServices {
    @Autowired
    ProductTypeRepo productTypeRepo;

    @Override
    public List<ProductType> getAllProductType() {
        return productTypeRepo.getAllProductType();
    }

    @Transactional
    @Override
    public void saveProductType(ProductType productType) {
        productTypeRepo.save(productType);
    }

    @Transactional
    @Override
    public void deleteProductType(ProductType productType) {
        productTypeRepo.delete(productType);
    }

    @Override
    public ProductType findByID(Integer id) {
        return productTypeRepo.findOne(id);
    }
}
