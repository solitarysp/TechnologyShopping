package com.fpt.controller;/*
  By Chi Can Em  23-01-2018
 */

import com.fpt.entity.Payment;
import com.fpt.services.payment.PaymentServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class PaymentController {
    @Autowired
    PaymentServices paymentServices;

    @RequestMapping(value = "/addPayment", method = RequestMethod.GET)
    public String getPageJSPAddPayment() {
        return "Payment/addPayment";
    }

    @RequestMapping(value = "/addPayment", method = RequestMethod.POST)
    public void AddPayment(Payment payment, HttpServletResponse response) {
        try {
            paymentServices.savePayment(payment);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @RequestMapping(value = "/editPayment", method = RequestMethod.POST)
    public void EditPayment(Payment payment, HttpServletResponse response) {
        paymentServices.savePayment(payment);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/getAllPayment", method = RequestMethod.GET)
    public String getAllPayment(ModelMap modelMap, HttpServletRequest request) {
        String value = request.getParameter("name");
        if (value != null) {
            List<Payment> listPayments = paymentServices.getAllPaymentByName(value);
            modelMap.addAttribute("listPayments", listPayments);

        } else {
            List<Payment> listPayments = paymentServices.getAll();
            modelMap.addAttribute("listPayments", listPayments);


        }
        return "Payment/viewAllPayment";
    }

    @RequestMapping(value = "/removePayment", method = RequestMethod.POST)
    public void DeletePayment(Integer id, HttpServletResponse response) {
        paymentServices.deletePayment(id);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/findPaymentByID", method = RequestMethod.GET)
    public String FindPaymentByID(@RequestParam("id") Integer id, ModelMap modelMap) {
        modelMap.addAttribute("payment", paymentServices.findByID(id));
        return "Payment/viewAndEditPayment";
    }
}
