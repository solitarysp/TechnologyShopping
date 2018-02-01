package com.fpt.controller;/*
  By Chi Can Em  24-01-2018
 */

import com.fpt.entity.Category;
import com.fpt.entity.Product;
import com.fpt.services.category.CategoryServices;
import com.fpt.services.product.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    ProductServices productServices;
    @Autowired
    CategoryServices categoryServices;

    @RequestMapping(value = "/getCategories", method = RequestMethod.POST)
    public String getProductByCategoriesHasLimit(ModelMap modelMap, Integer id, Integer limit, Integer page) {
        if (limit == null) {
            limit = 12;
        }
        if (page == null) {
            page = 0;
        }
        if (id != null) {
            Category type = categoryServices.getCategoryById(id);
            if (type != null) {
                List<Product> products = productServices.getProductByCategoriesHasLimit(id, page-1, limit);
                Double value = Double.valueOf(productServices.getCountProductByCategoriesHasLimit(id)) / 12;
                Double count = Math.ceil(value);
                modelMap.addAttribute("products", products);
                modelMap.addAttribute("count", count);
                return "product/ProductByCategoriesHasLimit";
            }
        } else {
            Double value = Double.valueOf(productServices.getCountProduct()) / 12;
            Double count = Math.ceil(value);
            List<Product> products = productServices.getProductHasL21imit(page-1,limit);
            modelMap.addAttribute("products", products);
            modelMap.addAttribute("count", count);
            return "product/ProductHasLimit";
        }
        return null;
    }
}
