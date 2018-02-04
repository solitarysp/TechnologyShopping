package com.fpt.controller;/*
  By Chi Can Em  03-02-2018
 */

import com.fpt.entity.Customer;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.customeraddress.CustomerAddressServices;
import com.fpt.utils.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class AddressController {
    @Autowired
    CustomerAddressServices customerAddressServices;
    @Autowired
    CustomerServices customerServices;

    @RequestMapping(value = "/account/listAddress")
    public String getShowListAddress(ModelMap modelMap, HttpServletRequest request) {
        Customer customer = null;
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        boolean isEmail = CommonUtil.isEmail(name);
        if (isEmail) {
            customer = customerServices.getCustomerByEmail(name);
        } else {
            customer = customerServices.getCustomerByUser(name);
        }
        try {
            modelMap.addAttribute("CustomerAddress", customer.getCustomerAddress());
        } catch (Exception e) {

        }
        return "Address";
    }

    @RequestMapping(value = "/account/DeleteCustomerAddress")
    public void doDeleteCustomerAddress(Integer id, HttpServletResponse response) {
        try {
            customerAddressServices.deleteCustomerAddressById(id);
            response.sendRedirect("/account/listAddress");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/account/ShowListAddressChoose")
    public String getShowListAddressChoose(ModelMap modelMap, HttpServletRequest request) {
        Customer customer = null;
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        boolean isEmail = CommonUtil.isEmail(name);
        if (isEmail) {
            customer = customerServices.getCustomerByEmail(name);
        } else {
            customer = customerServices.getCustomerByUser(name);
        }
        try {
            modelMap.addAttribute("CustomerAddress", customer.getCustomerAddress());
        } catch (Exception e) {

        }
        return "ChooseAddress";
    }
}
