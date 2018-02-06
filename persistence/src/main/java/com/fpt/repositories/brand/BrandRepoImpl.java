package com.fpt.repositories.brand;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Brand;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

public class BrandRepoImpl implements BrandRepoCustom {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Brand> getAllBrandByName(String name) {
        Query query = em.createQuery("SELECT b FROM Brand as b WHERE b.name LIKE :name");
        query.setParameter("name", "%" + name + "%");
        return query.getResultList();
    }
}
