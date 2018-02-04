package com.fpt.repositories.customer;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Customer;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

public class CustomerRepoImpl implements CustomerRepoCustom {
    @PersistenceContext
    private EntityManager em;

    @Override
    public boolean isCustomerEmail(String email) {
        Query query = em.createQuery("select c from Customer as c where c.email=:email");
        query.setParameter("email", email);
        try {
            Customer customer = (Customer) query.getSingleResult();
            return true;
        } catch (Exception e) {
            return false;

        }
    }

    @Override
    public boolean isCustomerUser(String User) {
        Query query = em.createQuery("select c from Customer as c where c.user=:user");
        query.setParameter("user", User);
        try {
            Customer customer = (Customer) query.getSingleResult();
            return true;
        } catch (Exception e) {
            return false;

        }
    }
}
