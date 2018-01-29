package com.fpt.controller;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Review;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.customeraddress.CustomerAddressServices;
import com.fpt.services.logadmin.LogAdminServices;
import com.fpt.services.product.ProductServices;
import com.fpt.services.review.ReviewServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

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
    @Autowired
    ReviewServices reviewServices;

    @RequestMapping(value = "/test.html")
    public void testGetAll() {
        List<Review> reviews = reviewServices.getAllByIdProduct("sp1");
        for (Review review : reviews
                ) {
            System.out.println(review.getComment());
        }
    }
}
