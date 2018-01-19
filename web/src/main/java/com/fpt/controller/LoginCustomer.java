package com.fpt.controller;/*
  By Chi Can Em  19-01-2018
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginCustomer {
    @RequestMapping(value = "/login.html")
    public String viewLogin(HttpServletRequest request) {
        System.out.println(request.getSession().getId());
        return "login";
    }
}
