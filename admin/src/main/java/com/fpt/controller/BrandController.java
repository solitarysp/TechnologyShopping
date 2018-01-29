package com.fpt.controller;/*
  By Chi Can Em  23-01-2018
 */

import com.fpt.entity.Brand;
import com.fpt.services.brand.BrandServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@Controller
public class BrandController {
    @Autowired
    BrandServices brandServices;

    @RequestMapping(value = "/addBrand", method = RequestMethod.GET)
    public String getPageJSPAddBrand() {
        return "Brand/addBrand";
    }

    @RequestMapping(value = "/addBrand", method = RequestMethod.POST)
    public void AddBrand(Brand brand, HttpServletResponse response) {
        try {
            brandServices.saveBrand(brand);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @RequestMapping(value = "/editBrand", method = RequestMethod.POST)
    public void EditBrand(Brand brand, HttpServletResponse response) {
        brandServices.saveBrand(brand);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/viewBrand", method = RequestMethod.GET)
    public String GetAllBrand(ModelMap modelMap) {
        ArrayList<Brand> listBrands = (ArrayList<Brand>) brandServices.getAllBrand();
        modelMap.addAttribute("listBrands", listBrands);
        return "Brand/viewAllBrand";
    }

    @RequestMapping(value = "/removeBrand", method = RequestMethod.POST)
    public void DeleteBrand(Integer id, HttpServletResponse response) {
        brandServices.deleteBrand(id);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(id);
    }

    @RequestMapping(value = "/findBrandByID", method = RequestMethod.GET)
    public String FindBrandByID(@RequestParam("id")Integer id, ModelMap modelMap) {
        modelMap.addAttribute("brand", brandServices.findByID(id));
        return "Brand/viewAndEditBrand";
    }



}
