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
public interface ProductRepo extends PagingAndSortingRepository<Product, String>,ProductRepoCustom {
    @Query(value = "select P from Product as P order by P.id desc ", nativeQuery = false)
    List<Product> getAll();

    @Query(value = "SELECT * FROM product AS p JOIN category_product ON p._id = category_product._id_product WHERE category_product._id_category=:_id_category", nativeQuery = true)
    List<Product> getAllByCategoryID(@Param("_id_category") Integer idCategory);



    @Query(value = "SELECT product.`_id`,product.`_name`,`_IMG`,product.`_price`,`_repository`,`_weight`,`_content`,`_date`,`_year_of_creation`,`_id_brand`,`_type`,`_id_category`,category.`_id`,category.`_name`,category.`_description`,value,ref_product_order.`_id`,ref_product_order.`_quantity`,`_id_order`,ref_product_order.`_id_product`,ref_product_order.`_price`,brand.`_id`,brand.`_name`,brand.`_description`,product_type.`_id`,product_type.`_name`,product_type.`_description`,sum(ref_product_order.`_quantity`) as `ref_product_order._quantity`  FROM product  JOIN category_product ON product._id = category_product._id_product JOIN category ON category_product._id_category = category._id JOIN ref_product_order ON product._id = ref_product_order._id_product JOIN brand ON product._id_brand = brand._id JOIN product_type ON product._type = product_type._id GROUP BY  ref_product_order._price,product._name LIMIT 6",nativeQuery = true)
    List<Product> getBestSellerProductForStatistic();

    @Query(value = "SELECT COUNT(*) FROM product WHERE _repository = 0",nativeQuery = true)
    int countProductOutStock();
}
