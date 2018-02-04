package com.fpt.repositories.producttype;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.ProductType;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductTypeRepo extends PagingAndSortingRepository<ProductType, Integer>,ProductTypeCustom {
    @Query(value = "select p from ProductType as p", nativeQuery = false)
    List<ProductType> getAllProductType();


    @Query(value = "SELECT SUM(ref_product_order.`_price`*ref_product_order.`_quantity`) FROM ref_product_order JOIN product ON ref_product_order.`_id_product` = product.`_id` JOIN product_type ON product.`_type` = product_type.`_id` WHERE product_type.`_id` = :idProductType",nativeQuery = true)
    Double getTotalRevenueOfProductType(@Param("idProductType") Integer idProductType);

    @Query(value = "SELECT SUM(ref_product_order.`_price`*ref_product_order.`_quantity`) FROM ref_product_order JOIN product ON ref_product_order.`_id_product` = product.`_id` JOIN product_type ON product.`_type` = product_type.`_id`",nativeQuery = true)
    Double getTotalRevenue();
}
