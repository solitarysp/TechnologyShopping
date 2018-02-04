package com.fpt.repositories.orderproduct;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.OrderProduct;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderProductRepo extends PagingAndSortingRepository<OrderProduct, Integer>, OrderProductRepoCustom {
    @Query(value = "select o from OrderProduct  as o")
    public List<OrderProduct> getAll();

    @Query(value = "SELECT count(*)  FROM order_product where DATE(`_date`)= CURDATE() - INTERVAL :day DAY",nativeQuery = true)
    public Integer getNewOrderByDate(@Param("day")Integer day);

}
