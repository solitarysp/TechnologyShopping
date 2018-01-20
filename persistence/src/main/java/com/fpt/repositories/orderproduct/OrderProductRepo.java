package com.fpt.repositories.orderproduct;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.OrderProduct;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderProductRepo extends PagingAndSortingRepository<OrderProduct, Integer>,OrderProductRepoCustom {
}
