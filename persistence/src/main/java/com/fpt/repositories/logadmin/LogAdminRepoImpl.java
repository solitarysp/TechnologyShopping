package com.fpt.repositories.logadmin;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class LogAdminRepoImpl implements LogAdminRepoCustom {
    @PersistenceContext
    private EntityManager em;

}
