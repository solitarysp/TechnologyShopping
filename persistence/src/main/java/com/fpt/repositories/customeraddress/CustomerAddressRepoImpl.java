package com.fpt.repositories.customeraddress;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class CustomerAddressRepoImpl implements CustomerAddressRepoCustom {
    @PersistenceContext
    private EntityManager em;
}
