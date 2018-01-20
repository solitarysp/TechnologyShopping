package com.fpt.entity;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;

@Entity
@Table(name = "product")
public class Product {
    private String id;
    private String name;
    private String IMG;
    private BigDecimal salePrice;
    private Float price;
    private Integer repository;
    private Float weight;
    private String content;
    private Timestamp date;
    private Integer _yearOfCreation;

    @Id
    @Column(name = "_id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Column(name = "_name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "_IMG")
    public String getIMG() {
        return IMG;
    }

    public void setIMG(String IMG) {
        this.IMG = IMG;
    }

    @Column(name = "_saled_price")
    public BigDecimal getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(BigDecimal salePrice) {
        this.salePrice = salePrice;
    }

    @Column(name = "_price")
    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    @Column(name = "_repository")
    public Integer getRepository() {
        return repository;
    }

    public void setRepository(Integer repository) {
        this.repository = repository;
    }

    @Column(name = "_weight")
    public Float getWeight() {
        return weight;
    }

    public void setWeight(Float weight) {
        this.weight = weight;
    }

    @Column(name = "_content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Column(name = "_date")
    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    @Column(name = "_year_of_creation")
    public Integer get_yearOfCreation() {
        return _yearOfCreation;
    }

    public void set_yearOfCreation(Integer _yearOfCreation) {
        this._yearOfCreation = _yearOfCreation;
    }

    private Brand brand;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "_id_brand")
    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    private ProductType productType;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "_type")
    public ProductType getProductType() {
        return productType;
    }

    public void setProductType(ProductType productType) {
        this.productType = productType;
    }
}
