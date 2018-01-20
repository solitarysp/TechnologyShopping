package com.fpt.repositories.payment;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Payment;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PaymentRepo extends PagingAndSortingRepository<Payment, Integer>, PaymentRepoCustom {
    @Query(value = "select P from Payment as P", nativeQuery = false)
    List<Payment> getAll();
}
