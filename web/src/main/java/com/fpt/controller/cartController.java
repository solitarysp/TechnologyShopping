package com.fpt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cartController{
    @RequestMapping(value = "/viewcart.html")
    public  String viewCart(){
        return "cart";
    }
}
