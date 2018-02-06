package com.fpt.repositories.payment;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Payment;

import java.util.List;

public interface PaymentRepoCustom {
    List<Payment> getAllPaymentByName(String name);
}
