package com.fpt.services.product;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Product;
import com.fpt.repositories.product.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImp implements ProductServices {
    @Autowired
    ProductRepo productRepo;

    @Override
    public List<Product> getAll() {
        return productRepo.getAll();
    }

    @Override
    public List<Product> getAllByCategoryID(Integer idCategory) {
        return productRepo.getAllByCategoryID(idCategory);
    }

    @Override
    public void saveProduct(Product product) {
        productRepo.save(product);
    }

    @Override
    public Product getProductById(String id) {
        return productRepo.findOne(id);
    }
}
