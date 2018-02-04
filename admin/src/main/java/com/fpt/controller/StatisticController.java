package com.fpt.controller;

import com.fpt.entity.Product;
import com.fpt.entity.ProductType;
import com.fpt.entity.RefProductOrder;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.product.ProductServices;
import com.fpt.services.producttype.ProductTypeServices;
import com.fpt.services.refproductorder.RefProductOrderServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class StatisticController {
    @Autowired
    ProductTypeServices productTypeServices;
    @Autowired
    ProductServices productServices;
    @Autowired
    CustomerServices customerServices;


    /* tesst*/
    @Autowired
    RefProductOrderServices refProductOrderServices;

    @RequestMapping(value = "/statistic", method = RequestMethod.GET)
    public String getData(ModelMap modelMap, HttpServletRequest request) {
        //Handling total statistic revenue of each product type
        List<ProductType> productTypeList = productTypeServices.getAllProductType();
        HashMap<String, Double> totalMap = new HashMap<String, Double>();
        double totalAll = 0;
        for (ProductType pt : productTypeList) {
            double total = productTypeServices.getTotalRevenueOfProductType(pt.getId());
            totalAll += total;
            totalMap.put(pt.getName(), total);
        }
        //total revenue
        Double totalRenueve = productTypeServices.getTotalRevenue();
        //best seller
        List<RefProductOrder> refProductOrders = refProductOrderServices.getBestSellerProductForStatistic();
        //count customer
        long countCustomer = customerServices.countCustomer();

        modelMap.addAttribute("countCustomer", countCustomer);
        modelMap.addAttribute("totalProductType", totalMap);
        modelMap.addAttribute("totalAll", totalAll);
        modelMap.addAttribute("totalRenueve", totalRenueve);
        modelMap.addAttribute("refProductOrders", refProductOrders);
        return "Statistic/statistic";
    }
}
