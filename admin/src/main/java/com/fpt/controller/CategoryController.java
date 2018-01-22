package com.fpt.controller;/*
  By Chi Can Em  22-01-2018
 */

import com.fpt.entity.Category;
import com.fpt.services.category.CategoryServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class CategoryController {
    @Autowired
    CategoryServices categoryServices;

    @RequestMapping(value = "/addCategory", method = RequestMethod.GET)
    public String getPageJSPAddCategory() {
        return "addCategory";
    }

    @RequestMapping(value = "/addCategory", method = RequestMethod.POST)
    public void AddCategory(Category category, HttpServletResponse response) {
        try {
            categoryServices.saveCategory(category);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
