package com.fpt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class checkoutController{
    @RequestMapping(value = "/checkout.html")
    public  String viewCheckout(){
        return "checkout";
    }
}
