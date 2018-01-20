package com.fpt.controller;/*
  By Chi Can Em  19-01-2018
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {
    @RequestMapping("/index.html")
    public String index(HttpServletRequest httpServletRequest) {
        System.out.println(httpServletRequest.getSession().getId());
        return "Index";
    }
}
