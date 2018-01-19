package com.fpt.repositories.producttype;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.ProductType;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductTypeRepo extends PagingAndSortingRepository<ProductType, Integer>,ProductTypeCustom {
    @Query(value = "select p from ProductType as p", nativeQuery = false)
    List<ProductType> getAllProductType();

}
