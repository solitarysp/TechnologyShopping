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
import java.util.ArrayList;

@Controller
public class CategoryController {
    @Autowired
    CategoryServices categoryServices;

    @RequestMapping(value = "/addCategory", method = RequestMethod.GET)
    public String getPageJSPAddCategory() {
        return "Category/addCategory";
    }

    @RequestMapping(value = "/addCategory", method = RequestMethod.POST)
    public String AddCategory(Category category, HttpServletResponse response) {
        try {
            categoryServices.saveCategory(category);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "Category/addCategory";
    }
    @RequestMapping(value = "/editCategory", method = RequestMethod.PUT)
    public String EditCategory(Category category, HttpServletResponse response){
        categoryServices.saveCategory(category);
        try {
            response.getWriter().println("update success");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "Category/addCategory";
    }

    @RequestMapping(value = "/getAllCategory",method = RequestMethod.GET)
    public ArrayList<Category> GetAllCategory(){
        ArrayList<Category> listCategories = (ArrayList<Category>) categoryServices.getAllCategory();
        return listCategories;
    }

    @RequestMapping(value = "/removeCategory",method = RequestMethod.DELETE)
    public String DeleteBrand(Category category){
        categoryServices.deleteCategory(category);
        return "Category/addCategory";
    }
}
