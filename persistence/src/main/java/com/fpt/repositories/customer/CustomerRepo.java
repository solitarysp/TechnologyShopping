package com.fpt.repositories.customer;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Customer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerRepo extends PagingAndSortingRepository<Customer, Integer>, CustomerRepoCustom {
    @Query(value = "select C from Customer as C", nativeQuery = false)
    List<Customer> getAll();

    @Query(value = "select C from Customer as C where C.email=:email", nativeQuery = false)
    Customer getCustomerByEmail(@Param("email") String email);

    @Query(value = "select C from Customer as C where C.user=:user", nativeQuery = false)
    Customer getCustomerByUser(@Param("user") String user);

}
