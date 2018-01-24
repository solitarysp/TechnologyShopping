package com.fpt.services.product;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Product;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductServices {
    List<Product> getAll();

    List<Product> getAllByCategoryID(Integer idCategory);

    void saveProduct(Product product);

    Product getProductById(String id);
    List<Product> getAllProductBestSellers();
    List<Product> getProductByCategoriesHasLimit( Integer id,Integer limit);

}
