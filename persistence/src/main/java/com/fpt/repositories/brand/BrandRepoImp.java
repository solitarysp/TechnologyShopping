package com.fpt.repositories.brand;/*
  By Chi Can Em  19-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class BrandRepoImp implements BrandRepoCustom {
    @PersistenceContext
    private EntityManager em;
}
