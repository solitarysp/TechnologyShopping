package com.fpt.repositories.product;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class ProductRepoImp implements ProductRepoCustom {
    @PersistenceContext
    private EntityManager em;
}
