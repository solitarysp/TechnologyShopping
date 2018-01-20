package com.fpt.repositories.customeraddress;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.CustomerAddress;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerAddressRepo extends PagingAndSortingRepository<CustomerAddress, Integer>, CustomerAddressRepoCustom {
    @Query(value = "select c from CustomerAddress  as c")
    public List<CustomerAddress> getAll();
}
