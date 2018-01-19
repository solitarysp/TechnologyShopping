package com.fpt.services.payment;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Payment;
import com.fpt.repositories.payment.PaymentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentServiceImp implements PaymentServices {
    @Autowired
    PaymentRepo paymentRepo;

    @Override
    public List<Payment> getAll() {
        return paymentRepo.getAll();
    }
}
