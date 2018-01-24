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
    private List<Product> productListSale;
    private List<Product> productList;
    private List<Product> productListBestSellers;

    @Autowired
    ProductServices productServices;

    @RequestMapping(value = "/")
    public String viewHome(ModelMap modelMap) {
        productListSale = productServices.getAllByCategoryID(1);
        modelMap.addAttribute("productListSale", productListSale);

        productList = productServices.getAll();
        modelMap.addAttribute("productList", productList);

        productListBestSellers = productServices.getAllProductBestSellers();
        modelMap.addAttribute("productListBestSellers", productListBestSellers);
        return "home";
    }
}
