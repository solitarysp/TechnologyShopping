package com.fpt.controller;

import com.fpt.entity.Category;
import com.fpt.entity.Product;
import com.fpt.services.category.CategoryServices;
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
    @Autowired
    CategoryServices categoryServices;

    @RequestMapping(value = "/")
    public String viewHome(ModelMap modelMap) {
        productListSale = productServices.getAllByCategoryID(1);
        modelMap.addAttribute("productListSale", productListSale);

        Double value = Double.valueOf(productServices.getCountProduct()) / 12;
        Double count = Math.ceil(value);
        List<Product> products = productServices.getProductHasL21imit(0, 12);
        modelMap.addAttribute("productList", products);
        modelMap.addAttribute("count", count);


        productListBestSellers = productServices.getAllProductBestSellers();
        modelMap.addAttribute("productListBestSellers", productListBestSellers);

        List<Category> categories = categoryServices.getAllCategory();
        modelMap.addAttribute("categories", categories);

        return "home";
    }
}
