package com.fpt.controller;/*
  By Chi Can Em  26-01-2018
 */

import com.fpt.entity.Product;
import com.fpt.services.product.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SearchController {
    @Autowired
    ProductServices productServices;

    @RequestMapping(value = "/search")
    public String getListProduct(ModelMap modelMap, String name, Integer page) {
        Long Count = productServices.getCountProduct();
        if (page == null) {
            page = 0;
        }
        if (name == null) {
            name = "";
        }
        Double value = Double.valueOf(productServices.getCountProductsPage(name)) / 15;
        Double count = Math.ceil(value);
        List<Product> products = productServices.getProductsPage(name, page-1, 15);
        modelMap.addAttribute("count", count.intValue());
        modelMap.addAttribute("products", products);
        return "Search";
    }
}