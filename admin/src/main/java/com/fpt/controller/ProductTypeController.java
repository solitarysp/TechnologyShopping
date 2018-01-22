package com.fpt.controller;/*
  By Chi Can Em  23-01-2018
 */

import com.fpt.entity.ProductType;
import com.fpt.services.producttype.ProductTypeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class ProductTypeController {
    @Autowired
    ProductTypeServices productTypeServices;

    @RequestMapping(value = "/addProductType", method = RequestMethod.GET)
    public String getPageJSPAddProductType() {
        return "addProductType";
    }

    @RequestMapping(value = "/addProductType", method = RequestMethod.POST)
    public void AddProductType(ProductType productType, HttpServletResponse response) {
        try {
            productTypeServices.saveProductType(productType);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
