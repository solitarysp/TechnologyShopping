package com.fpt.controller;

import com.fpt.entity.*;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.customeraddress.CustomerAddressServices;
import com.fpt.services.orderproduct.OrderProductServices;
import com.fpt.services.payment.PaymentServices;
import com.fpt.services.product.ProductServices;
import com.fpt.services.refproductorder.RefProductOrderServices;
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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class checkoutController {
    @Autowired
    CustomerAddressServices customerAddressServices;
    @Autowired
    OrderProductServices orderProductServices;
    @Autowired
    ProductServices productServices;
    @Autowired
    PaymentServices paymentServices;
    @Autowired
    RefProductOrderServices refProductOrderServices;

    @Autowired
    CustomerServices customerServices;
    private ArrayList<Product> listProduct;
    private Set<OrderProduct> listProductOrder;

    @RequestMapping(value = "/checkout.html")
    public String viewCheckout(HttpServletRequest request, ModelMap modelMap, HttpServletResponse response) {
        HttpSession httpSession = request.getSession();
        listProduct = (ArrayList<Product>) httpSession.getAttribute("listCart");
        List<Payment> payment = paymentServices.getAll();
        if (listProduct == null) {
            try {
                response.sendRedirect("cart.html");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        modelMap.addAttribute("listProduct", listProduct);
        modelMap.addAttribute("payment", payment);
        return "checkout";
    }

    @RequestMapping(value = "/addOder", method = RequestMethod.POST)
    public String addOder(HttpServletRequest request, ModelMap modelMap, HttpServletResponse response) {
        OrderProduct orderProduct = new OrderProduct();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        Customer customer = null;
        if (CommonUtil.isEmail(name)) {
            customer = customerServices.getCustomerByEmail(name);
            orderProduct.setCustomer(customer);
        }
        HttpSession httpSession = request.getSession();
        listProduct = (ArrayList<Product>) httpSession.getAttribute("listCart");
        String fullName = request.getParameter("Full_name");
        String company = request.getParameter("company");
        String nation = request.getParameter("nation");
        String district = request.getParameter("district");
        String city = request.getParameter("city");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String zipCode = request.getParameter("postcode");
        String address = request.getParameter("AddressFull");
        Integer payment = Integer.valueOf(request.getParameter("payment"));
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
        Float totalWeight = 0F;
        Float totalBill = 0F;
        Timestamp now = new Timestamp(System.currentTimeMillis());
        orderProduct.setDate(now);
        for (Product p : listProduct) {
            float total = p.getWeight() * p.getRepository();
            float sumBill = p.getPrice() * p.getRepository();
            totalWeight += total;
            totalBill += sumBill;
        }
        orderProduct.setTotalWeight(totalWeight);
        orderProduct.setTotalBill(totalBill);
        orderProduct.setStatusPayment("Chưa thanh toán");
        orderProduct.setStatusDelivery("Chưa giao hàng");
        orderProduct.setStatusBill("Hiện tại");
        Payment payment1 = paymentServices.findByID(payment);
        orderProduct.setPayment(payment1);
        orderProduct.setCustomerAddress(customerAddress);

        Set<RefProductOrder> refProductOrders = new HashSet<>();
        for (Product p : listProduct) {
            RefProductOrder refProductOrder = new RefProductOrder();
            refProductOrder.setQuantity(p.getRepository());
            refProductOrder.setPrice(p.getPrice());
            refProductOrder.setProduct(productServices.getProductById(p.getId()));
            refProductOrder.setOrderProduct(orderProduct);
            refProductOrders.add(refProductOrder);
            // xóa bỏ ở product số lượng đi
            Product product1 = productServices.getProductById(p.getId());
            if (product1.getRepository() <= p.getRepository()) {
                product1.setRepository(0);
            } else {
                product1.setRepository(product1.getRepository() - p.getRepository());

            }
            productServices.saveProduct(product1);
        }

        orderProduct.setRefProductOrder(refProductOrders);
        orderProductServices.saveOrderProduct(orderProduct);

        ArrayList<Product> listProduct1 = (ArrayList<Product>) listProduct.clone();
        httpSession.setAttribute("listCartCuccess", listProduct1);
        httpSession.setAttribute("orderProduct", orderProduct);
        httpSession.setAttribute("listCart", null);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
