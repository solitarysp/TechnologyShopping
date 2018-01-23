package com.fpt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class viewProductController {
    @RequestMapping(value = "/viewProduct.html")
    public String viewProduct(){
        return "viewProduct";
    }
}
