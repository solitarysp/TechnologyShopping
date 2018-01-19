package com.fpt.controller;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Administrator;
import com.fpt.services.administrator.AdministratorServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class Test {
    @Autowired
    AdministratorServices administratorServices;

    @RequestMapping(value = "/test.html")
    public void testGetAll() {
        List<Administrator> administratorList = administratorServices.getAll();
        for (Administrator administrator : administratorList
                ) {
            System.out.println(administrator.getId()+" "+administrator.getEmail());
        }
    }
}
