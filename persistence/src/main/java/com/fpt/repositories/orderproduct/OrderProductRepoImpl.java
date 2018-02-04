package com.fpt.repositories.orderproduct;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class OrderProductRepoImpl implements OrderProductRepoCustom {
    @PersistenceContext
    private EntityManager em;
}
