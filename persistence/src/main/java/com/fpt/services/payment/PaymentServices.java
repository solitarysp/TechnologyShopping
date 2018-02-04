package com.fpt.services.payment;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Payment;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PaymentServices {
    List<Payment> getAll();

    void savePayment(Payment payment);

    void deletePayment(Integer id);

    Payment findByID(Integer id);
}
