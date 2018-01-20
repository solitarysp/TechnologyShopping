package com.fpt.repositories.category;/*
  By Chi Can Em  19-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class CategoryRepoImp implements CategoryRepoCustom {
    @PersistenceContext
    private EntityManager em;
}
