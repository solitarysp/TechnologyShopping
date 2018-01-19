package com.fpt.entity;/*
  By Chi Can Em  19-01-2018
 */

import javax.persistence.*;

@Entity
@Table(name = "administrator")
public class Administrator extends Person {
    public Administrator() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    @Override
    public Integer getId() {
        return super.getId();
    }

    @Override
    public void setId(Integer id) {
        super.setId(id);
    }

    @Column(name = "_email")
    @Override
    public String getEmail() {
        return super.getEmail();
    }

    @Override
    public void setEmail(String email) {
        super.setEmail(email);
    }

    @Column(name = "_user")
    @Override
    public String getUser() {
        return super.getUser();
    }

    @Override
    public void setUser(String user) {
        super.setUser(user);
    }

    @Column(name = "_password")
    @Override
    public String getPassword() {
        return super.getPassword();
    }

    @Override
    public void setPassword(String password) {
        super.setPassword(password);
    }
}
