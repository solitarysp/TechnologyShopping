package com.fpt.controller;/*
  By Chi Can Em  23-01-2018
 */

import com.fpt.entity.ProductType;
import com.fpt.services.producttype.ProductTypeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

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
    @RequestMapping(value = "/editProductType", method = RequestMethod.PUT)
    public String EditProductType(ProductType productType, HttpServletResponse response){
        productTypeServices.saveProductType(productType);
        try {
            response.getWriter().println("update success");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "ProductType/addProductType";
    }

    @RequestMapping(value = "/getAllProductType",method = RequestMethod.GET)
    public ArrayList<ProductType> getAllProductTypes(){
        ArrayList<ProductType> listProductTypes = (ArrayList<ProductType>) productTypeServices.getAllProductType();
        return listProductTypes;
    }


    @RequestMapping(value = "/removeProductType",method = RequestMethod.DELETE)
    public String DeleteBrand(ProductType productType){
        productTypeServices.deleteProductType(productType);
        return "ProductType/addProductType";
    }
}
