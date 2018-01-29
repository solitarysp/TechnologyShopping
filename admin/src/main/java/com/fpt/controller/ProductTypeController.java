package com.fpt.controller;/*
  By Chi Can Em  23-01-2018
 */

import com.fpt.entity.ProductType;
import com.fpt.services.producttype.ProductTypeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductTypeController {
    @Autowired
    ProductTypeServices productTypeServices;

    @RequestMapping(value = "/addProductType", method = RequestMethod.GET)
    public String getPageJSPAddProductType() {
        return "ProductType/addProductType";
    }

    @RequestMapping(value = "/addProductType", method = RequestMethod.POST)
    public void AddProductType(ProductType productType, HttpServletResponse response) {
        try {
            productTypeServices.saveProductType(productType);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
    @RequestMapping(value = "/editProductType", method = RequestMethod.POST)
    public void EditProductType(ProductType productType, HttpServletResponse response){
        productTypeServices.saveProductType(productType);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/getAllProductType",method = RequestMethod.GET)
    public String getAllProductTypes(ModelMap modelMap){
        List<ProductType> listProductTypes = productTypeServices.getAllProductType();
        modelMap.addAttribute("listProductTypes",listProductTypes);
        return "ProductType/viewAllProductType";
    }


    @RequestMapping(value = "/removeProductType",method = RequestMethod.POST)
    public void DeleteProductType(ProductType productType,HttpServletResponse response){
        productTypeServices.deleteProductType(productType);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/findProductTypeByID", method = RequestMethod.GET)
    public String FindProductTypeByID(@RequestParam("id")Integer id, ModelMap modelMap) {
        modelMap.addAttribute("productType", productTypeServices.findByID(id));
        return "ProductType/viewAndEditProductType";
    }
}
