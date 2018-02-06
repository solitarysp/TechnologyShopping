package com.fpt.repositories.payment;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Payment;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

public class PaymentRepoImpl implements PaymentRepoCustom {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Payment> getAllPaymentByName(String name) {
        Query query = em.createQuery("SELECT b FROM Payment as b WHERE b.content LIKE :name");
        query.setParameter("name", "%" + name + "%");
        return query.getResultList();
    }
}
