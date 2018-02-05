package com.fpt.repositories.producttype;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.ProductType;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

public class ProductTypeRepoImpl implements ProductTypeCustom {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<ProductType> getAllProductTypeByName(String name) {
        Query query = em.createQuery("SELECT b FROM ProductType as b WHERE b.name LIKE :name");
        query.setParameter("name", "%" + name + "%");
        return query.getResultList();

    }
}
