package com.fpt.repositories.category;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Category;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

public class CategoryRepoImpl implements CategoryRepoCustom {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Category> getAllCategoryByName(String name) {
        Query query = em.createQuery("SELECT c FROM Category as c WHERE c.name LIKE :name");
        query.setParameter("name", "%" + name + "%");
        return query.getResultList();
    }
}
