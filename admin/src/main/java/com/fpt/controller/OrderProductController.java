package com.fpt.controller;

import com.fpt.entity.OrderProduct;
import com.fpt.entity.Product;
import com.fpt.entity.RefProductOrder;
import com.fpt.services.orderproduct.OrderProductServices;
import com.fpt.services.product.ProductServices;
import com.fpt.services.refproductorder.RefProductOrderServices;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class OrderProductController {
    @Autowired
    OrderProductServices orderProductServices;

    @RequestMapping(value = "/orderProduct", method = RequestMethod.GET)
    public String orderProduct(ModelMap modelMap) {
        List<OrderProduct> orderProducts = orderProductServices.getAll();
        modelMap.addAttribute("orderProducts", orderProducts);
        return "OrderProduct/orderProduct";
    }

    @RequestMapping(value = "/findOrderProductByID", method = RequestMethod.GET)
    public String findOrderProductByID(Integer id, ModelMap modelMap) {
        OrderProduct orderProduct = orderProductServices.getOrderByID(id);
        modelMap.addAttribute("orderProduct", orderProduct);
        return "OrderProduct/viewAndEditOrderProduct";
    }

    @RequestMapping(value = "/blockOrder", method = RequestMethod.POST)
    public void blockOrder(Integer id, HttpServletResponse response) {
        OrderProduct orderProduct = orderProductServices.getOrderByID(id);
        orderProduct.setStatusBill("Blocking");
        orderProductServices.saveOrderProduct(orderProduct);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/unblockOrder", method = RequestMethod.POST)
    public void unblockOrder(Integer id, HttpServletResponse response) {
        OrderProduct orderProduct = orderProductServices.getOrderByID(id);
        orderProduct.setStatusBill("Expiring");
        orderProductServices.saveOrderProduct(orderProduct);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
