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
import java.util.ArrayList;

@Controller
public class PaymentController {
    @Autowired
    PaymentServices paymentServices;

    @RequestMapping(value = "/addPayment", method = RequestMethod.GET)
    public String getPageJSPAddPayment() {
        return "Payment/addPayment";
    }

    @RequestMapping(value = "/addPayment", method = RequestMethod.POST)
    public String AddPayment(Payment payment, HttpServletResponse response) {
        try {
            paymentServices.savePayment(payment);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "Payment/addPayment";
    }
    @RequestMapping(value = "/editPayment", method = RequestMethod.PUT)
    public String EditPayment(Payment payment, HttpServletResponse response){
        paymentServices.savePayment(payment);
        try {
            response.getWriter().println("update success");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "Payment/addPayment";
    }

    @RequestMapping(value = "/getAllPayment",method = RequestMethod.GET)
    public ArrayList<Payment> getAllPayment(){
        ArrayList<Payment> listPayments = (ArrayList<Payment>) paymentServices.getAll();
        return listPayments;
    }

    @RequestMapping(value = "/removePayment",method = RequestMethod.DELETE)
    public String DeleteBrand(Payment payment){
        paymentServices.deletePayment(payment);
        return "Payment/addPayment";
    }
}
