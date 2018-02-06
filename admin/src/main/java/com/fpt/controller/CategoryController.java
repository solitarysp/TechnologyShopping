package com.fpt.controller;/*
  By Chi Can Em  22-01-2018
 */

import com.fpt.entity.Category;
import com.fpt.services.category.CategoryServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
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
    public void AddCategory(Category category, HttpServletResponse response) {
        try {
            if (category.getValue() == null) {
                category.setValue(0);
            }
            categoryServices.saveCategory(category);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @RequestMapping(value = "/editCategory", method = RequestMethod.POST)
    public void EditCategory(Category category, HttpServletResponse response) {
        categoryServices.saveCategory(category);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @RequestMapping(value = "/getAllCategory", method = RequestMethod.GET)
    public String GetAllCategory(ModelMap modelMap, HttpServletRequest request) {

        String value = request.getParameter("name");
        if (value != null) {
            ArrayList<Category> listCategories = (ArrayList<Category>) categoryServices.getAllCategoryByName(value);
            modelMap.addAttribute("listCategories", listCategories);
        } else {
            ArrayList<Category> listCategories = (ArrayList<Category>) categoryServices.getAllCategory();
            modelMap.addAttribute("listCategories", listCategories);

        }


        return "Category/viewAllCategory";
    }

    @RequestMapping(value = "/removeCategory", method = RequestMethod.POST)
    public void DeleteCategory(Integer id, HttpServletResponse response) {
        try {
            categoryServices.deleteCategory(id);
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/findCategoryByID", method = RequestMethod.GET)
    public String FindBrandByID(@RequestParam("id") Integer id, ModelMap modelMap) {
        modelMap.addAttribute("category", categoryServices.findByID(id));
        return "Category/viewAndEditCategory";
    }
}
