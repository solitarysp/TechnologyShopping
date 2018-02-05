package com.fpt.controller;/*
  By Chi Can Em  04-02-2018
 */

import com.fpt.entity.*;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.orderproduct.OrderProductServices;
import com.fpt.services.payment.PaymentServices;
import com.fpt.services.product.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class ConfirmCartController {
    @Autowired
    CustomerServices customerServices;
    @Autowired
    PaymentServices paymentServices;
    @Autowired
    OrderProductServices orderProductServices;
    @Autowired
    ProductServices productServices;

    @RequestMapping(value = "/account/showConfirmCart")
    public String showConfirmCart(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
        String idAddress = request.getParameter("idAddress");
        if (idAddress == null) {
            try {
                response.sendRedirect("account/ShowListAddressChoose");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        try {
            Integer.parseInt(idAddress);
        } catch (Exception e) {
            try {
                response.sendRedirect("account/ShowListAddressChoose");
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }

        CustomerAddress customerAddress = doCustomerAddress(idAddress);
        if (customerAddress == null) {
            return "redirect:/hacker";
        }
        List<Payment> payment = paymentServices.getAll();

        modelMap.addAttribute("customerAddress", customerAddress);
        modelMap.addAttribute("payment", payment);
        return "ConfirmCartHasUser";
    }

    private CustomerAddress doCustomerAddress(String idAddress) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        Customer customer = customerServices.getCustomerByEmail(name);
        CustomerAddress customerAddress = null;
        for (CustomerAddress customerAddress1 : customer.getCustomerAddress()
                ) {
            if (customerAddress1.getId() == Integer.parseInt(idAddress)) {
                customerAddress = customerAddress1;
                return customerAddress;
            }
        }
        return null;
    }

    @RequestMapping(value = "/account/confirmCart")
    public String confirmCart(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
        String idAddress = request.getParameter("idAddress");
        if (idAddress == null) {
            try {
                response.sendRedirect("account/ShowListAddressChoose");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        try {
            Integer.parseInt(idAddress);
        } catch (Exception e) {
            try {
                response.sendRedirect("account/ShowListAddressChoose");
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
        CustomerAddress customerAddress = doCustomerAddress(idAddress);
        HttpSession httpSession = request.getSession();
        ArrayList<Product> listProduct = (ArrayList<Product>) httpSession.getAttribute("listCart");
        OrderProduct orderProduct = new OrderProduct();
        Set<RefProductOrder> refProductOrders = new HashSet<>();
        orderProduct.setCustomer(customerAddress.getCustomer());
        orderProduct.setCustomerAddress(customerAddress);

        // tính tổng giá tiền
        Float TinhGia = 0F;
        Float tongKhoiLuong = 0F;
        if (listProduct != null) {
            for (Product product : listProduct
                    ) {
                TinhGia = TinhGia + (product.getPrice() * product.getRepository());
                tongKhoiLuong = tongKhoiLuong + product.getWeight();
                RefProductOrder refProductOrder = new RefProductOrder();
                refProductOrder.setQuantity(product.getRepository());
                refProductOrder.setPrice(product.getPrice());
                refProductOrder.setOrderProduct(orderProduct);
                refProductOrder.setProduct(product);
                refProductOrders.add(refProductOrder);
            }
            orderProduct.setRefProductOrder(refProductOrders);
        } else {
            try {
                response.sendRedirect("/");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        double convertLaiGia = Math.ceil(TinhGia);
        orderProduct.setTotalBill((float) convertLaiGia);
        orderProduct.setStatusPayment("Chưa thanh toán");
        orderProduct.setTotalWeight(tongKhoiLuong);
        orderProduct.setFeeDelivery(0);

        Integer idPaymen = Integer.valueOf(request.getParameter("idPaymen"));
        Payment payment = paymentServices.findByID(idPaymen);
        orderProduct.setPayment(payment);
        Timestamp now = new Timestamp(System.currentTimeMillis());
        orderProduct.setDate(now);
        orderProduct.setStatusDelivery("Chưa vận chuyển");
        orderProduct.setStatusBill("Hiện tại");
        orderProductServices.saveOrderProduct(orderProduct);
        for (Product product : listProduct
                ) {
            Product product1 = productServices.getProductById(product.getId());
            if (product1.getRepository() <= product.getRepository()) {
                product1.setRepository(0);
            } else {
                product1.setRepository(product1.getRepository() - product.getRepository());

            }
            productServices.saveProduct(product1);
        }
        ArrayList<Product> listProduct1 = (ArrayList<Product>) listProduct.clone();
        httpSession.setAttribute("listCartCuccess", listProduct1);
        httpSession.setAttribute("orderProduct", orderProduct);
        httpSession.setAttribute("listCart", null);

        try {
            response.sendRedirect("/confirmCartSuccess");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/confirmCartSuccess")
    public String confirmCartSuccess(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
        HttpSession httpSession1 = request.getSession();
        ArrayList<Product> listProduct = (ArrayList<Product>) httpSession1.getAttribute("listCartCuccess");
        OrderProduct orderProduct = (OrderProduct) httpSession1.getAttribute("orderProduct");
        //xóa bỏ đi để chỉ cho xem 1 lần
        httpSession1.setAttribute("listCartCuccess", null);
        httpSession1.setAttribute("orderProduct", null);
        // add vào view
        modelMap.addAttribute("listProduct", listProduct);
        modelMap.addAttribute("orderProduct", orderProduct);
        return "ConfirmCartSuccess";
    }
}
