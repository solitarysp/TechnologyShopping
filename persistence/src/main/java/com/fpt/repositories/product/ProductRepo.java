package com.fpt.repositories.product;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepo extends PagingAndSortingRepository<Product, String> {
    @Query(value = "select P from Product as P", nativeQuery = false)
    List<Product> getAll();

    @Query(value = "SELECT * FROM product AS p JOIN category_product ON p._id = category_product._id_product WHERE category_product._id_category=:_id_category", nativeQuery = true)
    List<Product> getAllByCategoryID(@Param("_id_category") Integer idCategory);
}
