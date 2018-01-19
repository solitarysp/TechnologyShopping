package com.fpt.entity;/*
  By Chi Can Em  19-01-2018
 */

import javax.persistence.*;

@Entity
@Table(name = "customer")
public class Customer extends Person {

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

    @Column(name = "_name")
    @Override
    public String getName() {
        return super.getName();
    }

    @Override
    public void setName(String name) {
        super.setName(name);
    }

    @Column(name = "_enabled")
    @Override
    public Byte getEnabled() {
        return super.getEnabled();
    }

    @Override
    public void setEnabled(Byte enabled) {
        super.setEnabled(enabled);
    }

    @Column(name = "authority")
    @Override
    public String getAuthority() {
        return super.getAuthority();
    }

    @Override
    public void setAuthority(String authority) {
        super.setAuthority(authority);
    }
}
