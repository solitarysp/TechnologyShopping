package com.fpt.repositories.payment;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class PaymentRepoImpl implements PaymentRepoCustom {
    @PersistenceContext
    private EntityManager em;
}
