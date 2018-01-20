package com.fpt.entity;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.*;

@Entity
@Table(name = "ref_product_order")
public class RefProductOrder {
    private Integer id;
    private Integer quantity;
    private float price;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "_quantity")
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Column(name = "_price")
    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    private OrderProduct orderProduct;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "_id_order")
    public OrderProduct getOrderProduct() {
        return orderProduct;
    }

    public void setOrderProduct(OrderProduct orderProduct) {
        this.orderProduct = orderProduct;
    }
}
