package com.fpt.controller;

import com.fpt.entity.OrderProduct;
import com.fpt.entity.RefProductOrder;
import com.fpt.services.orderproduct.OrderProductServices;
import com.fpt.services.refproductorder.RefProductOrderServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class OrderProductController {
    @Autowired
    OrderProductServices orderProductServices;

    @RequestMapping(value = "/orderProduct",method = RequestMethod.GET)
    public String orderProduct(ModelMap modelMap){
        List<OrderProduct> orderProducts = orderProductServices.getAll();
        modelMap.addAttribute("orderProducts",orderProducts);
        return "OrderProduct/orderProduct";
    }

    @RequestMapping(value = "/findOrderProductByID",method = RequestMethod.GET)
    public String findOrderProductByID(Integer id,ModelMap modelMap){
        OrderProduct orderProduct = orderProductServices.getOrderByID(id);
        modelMap.addAttribute("orderProduct",orderProduct);
        return "OrderProduct/viewAndEditOrderProduct";
    }

}
