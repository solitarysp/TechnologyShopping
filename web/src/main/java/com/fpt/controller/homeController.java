package com.fpt.controller;

import com.fpt.entity.Product;
import com.fpt.services.product.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class homeController {
    private List<Product> productList;

    @Autowired
    ProductServices productServices;

    @RequestMapping(value = "/")
    public String viewHome(ModelMap modelMap) {
        productList = productServices.getAllByCategoryID(1);
        System.out.println(productList.size());
        modelMap.addAttribute("productList", productList);
        return "home";
    }
}
