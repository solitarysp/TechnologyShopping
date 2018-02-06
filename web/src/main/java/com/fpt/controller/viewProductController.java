package com.fpt.controller;

import com.fpt.entity.Customer;
import com.fpt.entity.Product;
import com.fpt.entity.Review;
import com.fpt.services.customer.CustomerServices;
import com.fpt.services.product.ProductServices;
import com.fpt.services.review.ReviewServices;
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
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class viewProductController {
    @Autowired
    ProductServices productServices;
    @Autowired
    CustomerServices customerServices;
    @Autowired
    ReviewServices reviewServices;


    private List<Product> productList;

    private Product product;

    @RequestMapping(value = "/viewProduct.html")
    public String viewProduct(ModelMap modelMap, String id, HttpServletResponse response) throws IOException {
        if (id == null) {
            response.sendRedirect("/");
        } else {
            product = productServices.getProductById(id);
            System.out.println(product.getName());
            modelMap.addAttribute("product", product);

            productList = productServices.getAll();
            modelMap.addAttribute("productList", productList);
            List<Product> ProductBestSellers = productServices.getAllProductBestSellers();
            modelMap.addAttribute("productBestSellers", ProductBestSellers);

            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            String name = auth.getName();
            Customer customer = customerServices.getCustomerByEmail(name);
            modelMap.addAttribute("customer", customer);
        }
        return "viewProduct";
    }

    @RequestMapping(value = "/account/addComment", method = RequestMethod.POST)
    public void addComment(String idPro, String comment, Integer rating, String emailCus, HttpServletResponse response) {
        Review review = new Review();
        Customer customer = customerServices.getCustomerByEmail(emailCus);
        review.setCustomer(customer);
        review.setComment(comment);
        review.setRating(rating);
        review.setDate(new Timestamp(System.currentTimeMillis()));
        review.setProduct(productServices.getProductById(idPro));
        try {
            Set<Review> reviews = customer.getReview();
            if (reviews != null) {
                reviews.add(review);
            } else {
                reviews = new HashSet<>();
                reviews.add(review);
            }
            customerServices.saveCustomer(customer);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public ProductServices getProductServices() {
        return productServices;
    }

    public void setProductServices(ProductServices productServices) {
        this.productServices = productServices;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
