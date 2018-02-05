package com.fpt.controller;/*
  By Chi Can Em  19-01-2018
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

@Controller
public class IndexController {
    @RequestMapping("/")
    public String index(HttpServletRequest httpServletRequest) {
        System.out.println(httpServletRequest.getSession().getId());
        return "redirect:/statistic";
    }
}
