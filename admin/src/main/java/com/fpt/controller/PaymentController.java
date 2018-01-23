package com.fpt.controller;/*
  By Chi Can Em  23-01-2018
 */

import com.fpt.entity.Payment;
import com.fpt.services.payment.PaymentServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class PaymentController {
    @Autowired
    PaymentServices paymentServices;

    @RequestMapping(value = "/addPayment", method = RequestMethod.GET)
    public String getPageJSPAddPayment() {
        return "addPayment";
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
}
