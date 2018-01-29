package com.fpt.repositories.customer;/*
  By Chi Can Em  19-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class CustomerRepoImpl implements CustomerRepoCustom {
    @PersistenceContext
    private EntityManager em;
}
