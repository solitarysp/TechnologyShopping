package com.fpt.repositories.refproductorder;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class RefProductOrderRepoImpl implements RefProductOrderRepoCustom {
    @PersistenceContext
    private EntityManager em;
}
