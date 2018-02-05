package com.fpt.controller;/*
  By Chi Can Em  03-02-2018
 */

import com.fpt.entity.Customer;
import com.fpt.entity.CustomerAddress;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.customeraddress.CustomerAddressServices;
import com.fpt.utils.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping(value = "/account/addAddressCustomer", method = RequestMethod.GET)
    public String showAddAddressCustomer() {
        return "add_address";
    }

    @RequestMapping(value = "/account/addAddressCustomer", method = RequestMethod.POST)
    public String addAddressCustomer(HttpServletRequest request, ModelMap modelMap, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        Customer customer = null;
        if (CommonUtil.isEmail(name)) {
            customer = customerServices.getCustomerByEmail(name);
        }
        String fullName = request.getParameter("Full_name");
        String company = request.getParameter("company");
        String nation = request.getParameter("nation");
        String district = request.getParameter("district");
        String city = request.getParameter("city");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String zipCode = request.getParameter("postcode");
        String address = request.getParameter("AddressFull");
        CustomerAddress customerAddress = new CustomerAddress();
        customerAddress.setAddressFull(address);
        customerAddress.setCity(city);
        customerAddress.setCompany(company);
        customerAddress.setDistrict(district);
        customerAddress.setEmail(email);
        customerAddress.setName(fullName);
        customerAddress.setNation(nation);
        customerAddress.setPhone(phone);
        customerAddress.setZipCode(zipCode);
        if (customer != null) {
            customerAddress.setCustomer(customer);
        }
        customerAddressServices.saveCustomerAddress(customerAddress);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
