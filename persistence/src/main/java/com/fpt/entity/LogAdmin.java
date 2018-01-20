package com.fpt.entity;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "log_admin")
public class LogAdmin {
    private Integer id;
    private Timestamp dateAction;
    private String ipAddress;
    private String content;
    private Administrator administrator;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "date_action")
    public Timestamp getDateAction() {
        return dateAction;
    }

    public void setDateAction(Timestamp dateAction) {
        this.dateAction = dateAction;
    }

    @Column(name = "ip_address")
    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    @Column(name = "_content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "administrator_id")
    public Administrator getAdministrator() {
        return administrator;
    }

    public void setAdministrator(Administrator administrator) {
        this.administrator = administrator;
    }
}
