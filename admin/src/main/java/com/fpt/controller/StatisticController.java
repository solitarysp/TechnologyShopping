package com.fpt.controller;

import com.fpt.entity.OrderProduct;
import com.fpt.entity.ProductType;
import com.fpt.entity.RefProductOrder;
import com.fpt.entity.entity2.CountSession;
import com.fpt.services.brand.BrandServices;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.orderproduct.OrderProductServices;
import com.fpt.services.product.ProductServices;
import com.fpt.services.producttype.ProductTypeServices;
import com.fpt.services.refproductorder.RefProductOrderServices;
import com.fpt.services.review.ReviewServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Set;


@Controller
public class StatisticController {
    @Autowired
    ProductTypeServices productTypeServices;
    @Autowired
    ProductServices productServices;
    @Autowired
    CustomerServices customerServices;
    @Autowired
    OrderProductServices orderProductServices;
    @Autowired
    RefProductOrderServices refProductOrderServices;
    @Autowired
    ReviewServices reviewServices;
    @Autowired
    BrandServices brandServices;

    @RequestMapping(value = "/statistic", method = RequestMethod.GET)
    public String getData(ModelMap modelMap, HttpServletRequest request) {
        //Handling total statistic revenue of each product type
        List<ProductType> productTypeList = productTypeServices.getAllProductType();
        HashMap<String, Double> totalMap = new HashMap<String, Double>();
        double totalAll = 0;
        for (ProductType pt : productTypeList) {
            Double total = productTypeServices.getTotalRevenueOfProductType(pt.getId());
            if (total != null) {
                totalAll += total;
                totalMap.put(pt.getName(), total);
            }
        }
        //total revenue
        Double totalRenueve = productTypeServices.getTotalRevenue();
        //best seller
        List<RefProductOrder> refProductOrders = refProductOrderServices.getBestSellerProductForStatistic();
        //count customer
        long countCustomer = customerServices.countCustomer();
        //order today and last day
        int ordernow = orderProductServices.getNewOrderByDate(0);
        int orderbefore = orderProductServices.getNewOrderByDate(1);
        HashMap<String, Integer> order = new HashMap<String, Integer>();
        order.put("ordernow", ordernow);
        order.put("orderbefore", orderbefore);
        //total order
        int totalOrder = orderProductServices.totalOrder();
        //customer online
        int online = CountSession.getCountSession().getTotal();
        //today comment
        int cmtNow = reviewServices.countCmtByDay(0);
        int cmtBef = reviewServices.countCmtByDay(1);
        int cmtTotal = Math.toIntExact(reviewServices.countTotal());
        HashMap<String, Integer> cmt = new HashMap<String, Integer>();
        cmt.put("cmtNow", cmtNow);
        cmt.put("cmtBef", cmtBef);
        cmt.put("cmtTotal",cmtTotal);
        //total brand
        int totalBrand = brandServices.countBrand();
        //total Product
        double totalProduct = productServices.getCountProduct();
        //out of stock and percent
        double outStock = productServices.countProductOutStock();
        int percentP = (int)(100-outStock/totalProduct*100);
        //admin
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String admin = auth.getName();

        modelMap.addAttribute("admin",admin);
        modelMap.addAttribute("percentP",percentP);
        modelMap.addAttribute("totalProduct",totalProduct);
        modelMap.addAttribute("totalBrand",totalBrand);
        modelMap.addAttribute("comment",cmt);
        modelMap.addAttribute("online",online);
        modelMap.addAttribute("totalOrder", totalOrder);
        modelMap.addAttribute("order", order);
        modelMap.addAttribute("countCustomer", countCustomer);
        modelMap.addAttribute("totalProductType", totalMap);
        modelMap.addAttribute("totalAll", totalAll);
        modelMap.addAttribute("totalRenueve", totalRenueve);
        modelMap.addAttribute("refProductOrders", refProductOrders);
        return "Statistic/statistic";
    }

    @RequestMapping(value = "/statisticWeed", method = RequestMethod.GET)
    public String getStatisticWeed(ModelMap modelMap, HttpServletRequest request) {
        List<OrderProduct> orderProducts = null;
        String value = request.getParameter("value");
        if (value.equals("thisweed")) {
            orderProducts = orderProductServices.getWithThisWeed();
        }
        if (value.equals("lastweed")) {
            orderProducts = orderProductServices.getWithLastWeed();
        }
        if (value.equals("all")) {
            orderProducts = orderProductServices.getAll();
        }
        HashMap<String, Double> totalMap = new HashMap<String, Double>();
        List<ProductType> productTypeList = productTypeServices.getAllProductType();
        Double totalAll = 0D;
        for (ProductType productType : productTypeList
                ) {
            Double tongtien = 0D;
            for (OrderProduct orderProducts1 : orderProducts
                    ) {
                Set<RefProductOrder> refProductOrder = orderProducts1.getRefProductOrder();
                for (RefProductOrder refProductOrder1 : refProductOrder
                        ) {

                    if (productType.getId() == refProductOrder1.getProduct().getProductType().getId()) {
                        tongtien = tongtien + orderProducts1.getTotalBill();
                        break;
                    }
                }

            }
            totalAll = totalAll + tongtien;
            totalMap.put(productType.getName(), tongtien);
        }
        modelMap.addAttribute("totalAll", totalAll);
        modelMap.addAttribute("totalProductType", totalMap);
        return "Statistic/draw";
    }

}