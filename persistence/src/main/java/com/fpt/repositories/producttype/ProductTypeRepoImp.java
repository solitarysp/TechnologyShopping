package com.fpt.repositories.producttype;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class ProductTypeRepoImp implements ProductTypeCustom {
    @PersistenceContext
    private EntityManager em;
}
