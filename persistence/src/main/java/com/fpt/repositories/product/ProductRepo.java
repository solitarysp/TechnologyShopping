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

    @Query(value = "SELECT sum(_quantity) as totol,product._id as _id,_name,_IMG,product._price,_repository,_weight,_content,_date,_year_of_creation,_id_brand,_type FROM product JOIN ref_product_order ON product._id = ref_product_order._id_product GROUP BY _name ORDER BY totol DESC LIMIT 15", nativeQuery = true)
    List<Product> getAllProductBestSellers();

    @Query(value = "SELECT * FROM product AS p JOIN " +
            "category_product ON p._id = category_product._id_product WHERE " +
            "category_product._id_category=:_id_category LIMIT :limit",
            nativeQuery = true)
    List<Product> getProductByCategoriesHasLimit(@Param("_id_category") Integer id, @Param("limit") Integer limit);
}
