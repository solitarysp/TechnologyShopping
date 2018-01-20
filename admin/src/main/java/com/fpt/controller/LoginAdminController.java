package com.fpt.controller;/*
  By Chi Can Em  19-01-2018
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginAdminController {
    @RequestMapping(value = "/login.html")
    public String viewLogin() {
        return "login";
    }

}
