package com.fpt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shopController {
    @RequestMapping (value = "shop.html")
    public String viewShop(){
        return "shop";
    }
}
