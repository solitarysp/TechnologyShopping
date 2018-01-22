package com.fpt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class test {
    @RequestMapping(value = "/layout.html")
    public  String viewLayout(){
        return "layoutAdmin";
    }
}
