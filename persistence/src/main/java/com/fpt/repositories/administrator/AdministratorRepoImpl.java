package com.fpt.repositories.administrator;/*
  By Chi Can Em  19-01-2018
 */

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class AdministratorRepoImpl implements AdministratorRepoCustom {
    @PersistenceContext
    private EntityManager em;
}
