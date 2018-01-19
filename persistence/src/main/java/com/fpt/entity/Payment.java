package com.fpt.entity;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.*;

@Entity
@Table(name = "payment")
public class Payment {
    private Integer id;
    private String content;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_payment_id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "_content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
