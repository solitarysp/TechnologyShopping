package com.fpt.controller;

import com.fpt.entity.Customer;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.orderproduct.OrderProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class CustomerController {
    @Autowired
    CustomerServices customerServices;
    @Autowired
    OrderProductServices orderProductServices;

    @RequestMapping(value = "/getAllCustomer",method = RequestMethod.GET)
    public String getAllCus(ModelMap modelMap){
        List<Customer> customerList = customerServices.getAll();
        modelMap.addAttribute("customerList",customerList);
        return "Customer/viewAllCustomer";
    }

    @RequestMapping(value = "/viewProfile",method = RequestMethod.GET)
    public String getProfile(Integer id,ModelMap modelMap){
        Customer customer = customerServices.getCustomerByID(id);
        int countOrder = orderProductServices.countOrdersByIDCustomer(id);
        modelMap.addAttribute("customer",customer);
        modelMap.addAttribute("countOrder",countOrder);
        return "Customer/viewProfile";
    }
}
