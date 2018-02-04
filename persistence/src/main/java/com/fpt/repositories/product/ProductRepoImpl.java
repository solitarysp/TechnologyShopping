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
            page = 0;
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
        List<Long> longList = query.getResultList();
        for (Long o : longList
                ) {
            return o;
        }
        return 0L;
    }

    @Override
    public List<Product> getProductByCategoriesHasLimit(Integer id, Integer page, Integer limit) {
        if (page == null) {
            page = 0;
        }
        if (limit == null) {
            limit = 15;
        }
        Integer first = page * limit;
        Query query = em.createQuery("SELECT p FROM Product AS p JOIN p.category as c where c.id=:idca").setFirstResult(first).setMaxResults(limit);
        query.setParameter("idca", id);
        return query.getResultList();
    }

    @Override
    public Long getCountProductByCategoriesHasLimit(Integer id) {
        Query query = em.createQuery("SELECT count(p.id) FROM Product AS p JOIN p.category as c where c.id=:idca");
        query.setParameter("idca", id);
        List<Long> longList = query.getResultList();
        for (Long o : longList
                ) {
            return o;
        }
        return 0L;
    }

    @Override
    public List<Product> getProductHasL21imit(Integer page, Integer limit) {
        if (page == null) {
            page = 0;
        }
        if (limit == null) {
            limit = 15;
        }
        Integer first = page * limit;
        Query query = em.createQuery("SELECT p FROM Product AS p").setFirstResult(first).setMaxResults(limit);
        return query.getResultList();
    }
}
