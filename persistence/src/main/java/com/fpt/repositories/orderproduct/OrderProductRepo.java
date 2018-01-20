package com.fpt.repositories.orderproduct;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.OrderProduct;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderProductRepo extends PagingAndSortingRepository<OrderProduct, Integer>, OrderProductRepoCustom {
    @Query(value = "select o from OrderProduct  as o")
    public List<OrderProduct> getAll();
}
