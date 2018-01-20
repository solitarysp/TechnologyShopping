package com.fpt.repositories.customer;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Customer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerRepo extends PagingAndSortingRepository<Customer, Integer>, CustomerRepoCustom {
    @Query(value = "select C from Customer as C", nativeQuery = false)
    List<Customer> getAll();
}
