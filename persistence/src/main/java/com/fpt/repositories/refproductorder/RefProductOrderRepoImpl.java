package com.fpt.repositories.refproductorder;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.OrderProduct;
import com.fpt.entity.Product;
import com.fpt.entity.RefProductOrder;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class RefProductOrderRepoImpl implements RefProductOrderRepoCustom {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<RefProductOrder> getBestSellerProductForStatistic() {
        Query query = em.createQuery("select r.id,r.price,sum(r.quantity) as  quantity,r.product,r.orderProduct  from RefProductOrder as r group by r.product.name");
        List<Object[]> a = query.getResultList();
        List<RefProductOrder> refProductOrders=new ArrayList<>();
        for (Object[] objects:a
             ) {
            RefProductOrder refProductOrder=new RefProductOrder();
            refProductOrder.setId((Integer) objects[0]);
            refProductOrder.setPrice((Float) objects[1]);
            Long qt=(Long) objects[2];
            refProductOrder.setQuantity(Math.toIntExact(qt));
            refProductOrder.setProduct((Product) objects[3]);
            refProductOrder.setOrderProduct((OrderProduct) objects[4]);
            refProductOrders.add(refProductOrder);
        }
        return refProductOrders;
    }
}
