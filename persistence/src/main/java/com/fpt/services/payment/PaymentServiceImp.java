package com.fpt.services.payment;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Payment;
import com.fpt.repositories.payment.PaymentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PaymentServiceImp implements PaymentServices {
    @Autowired
    PaymentRepo paymentRepo;

    @Override
    public List<Payment> getAll() {
        return paymentRepo.getAll();
    }

    @Transactional
    @Override
    public void savePayment(Payment payment) {
        paymentRepo.save(payment);
    }

    @Transactional
    @Override
    public void deletePayment(Payment payment) {

    }

    @Override
    public Payment findByID(Integer id) {
        return paymentRepo.findOne(id);
    }
}
