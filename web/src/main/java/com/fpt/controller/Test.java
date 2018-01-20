package com.fpt.controller;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Category;
import com.fpt.entity.Product;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.customeraddress.CustomerAddressServices;
import com.fpt.services.logadmin.LogAdminServices;
import com.fpt.services.product.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Set;

@Controller
public class Test {
    @Autowired
    CustomerServices customerServices;
    @Autowired
    CustomerAddressServices customerAddressServices;
    @Autowired
    LogAdminServices logAdminServices;
    @Autowired
    ProductServices productServices;

    @RequestMapping(value = "/test.html")
    public void testGetAll() {
        List<Product> products = productServices.getAllByCategoryID(1);
        for (Product product : products
                ) {
            Set<Category> i = product.getCategory();
            for (Category category : i
                    ) {
                System.out.println(category.getName());
            }
            return;
        }
    }
}
