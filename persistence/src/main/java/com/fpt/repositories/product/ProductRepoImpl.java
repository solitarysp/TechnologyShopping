package com.fpt.repositories.product;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Product;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

public class ProductRepoImpl implements ProductRepoCustom {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Product> getProductsPage(String name, Integer page, Integer limit) {
        if (page == null) {
            page = 1;
        }
        if (limit == null) {
            limit = 15;
        }
        if (name == null) {
            name = "";
        }
        Integer first = page * limit;
        Query query = em.createQuery("SELECT p FROM Product as p WHERE p.id LIKE :name").setFirstResult(first).setMaxResults(limit);
        query.setParameter("name", "%" + name + "%");
        return query.getResultList();
    }

    @Override
    public Long getCountProductsPage(String name) {
        if (name == null) {
            name = "";
        }
        Query query = em.createQuery("SELECT count(p.id) FROM Product as p WHERE p.id LIKE :name");
        query.setParameter("name", "%" + name + "%");
        List<Long> longList=query.getResultList();
        for (Long o: longList
             ) {
           return o;
        }
    return 0L;
    }
}
