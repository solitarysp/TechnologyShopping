package com.fpt.controller;

import com.fpt.entity.Product;
import com.fpt.services.product.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class viewProductController {
    @Autowired
    ProductServices productServices;
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
        }
        return "viewProduct";
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
