package com.fpt.controller;/*
  By Chi Can Em  23-01-2018
 */

import com.fpt.entity.Brand;
import com.fpt.services.brand.BrandServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class BrandController {
    @Autowired
    BrandServices brandServices;

    @RequestMapping(value = "/addBrand", method = RequestMethod.GET)
    public String getPageJSPAddBrand() {
        return "addBrand";
    }

    @RequestMapping(value = "/addBrand", method = RequestMethod.POST)
    public void AddBrand(Brand brand, HttpServletResponse response) {
        try {
            brandServices.saveBrand(brand);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
