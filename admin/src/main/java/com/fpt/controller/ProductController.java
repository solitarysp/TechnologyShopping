package com.fpt.controller;

import com.fpt.entity.Brand;
import com.fpt.entity.Category;
import com.fpt.entity.Product;
import com.fpt.entity.ProductType;
import com.fpt.services.brand.BrandServices;
import com.fpt.services.category.CategoryServices;
import com.fpt.services.product.ProductServices;
import com.fpt.services.producttype.ProductTypeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.*;

@Controller
public class ProductController {
    @Autowired
    ProductServices productServices;

    @Autowired
    ProductTypeServices productTypeServices;

    @Autowired
    CategoryServices categoryServices;

    @Autowired
    BrandServices brandServices;

    @RequestMapping(value = "/addProduct", method = RequestMethod.GET)
    public String getPageJSPAddPayment(ModelMap modelMap) {
        modelMap.addAttribute("listProductType", productTypeServices.getAllProductType());
        modelMap.addAttribute("listCategory", categoryServices.getAllCategory());
        modelMap.addAttribute("listBrand", brandServices.getAllBrand());
        return "Product/addProduct";
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public ModelAndView addProduct(Product product, Integer[] categoryTemp, String productTypeTemp, Integer brandTemp,
                                   HttpServletRequest request, HttpServletResponse response, @RequestParam("file") MultipartFile file
    ) {
        Category category = null;
        Set<Category> categories = new HashSet<Category>();

        for(int i = 0; i < categoryTemp.length; i++){
            category = categoryServices.findByID(categoryTemp[i]);
            categories.add(category);
        }
        product.setCategory(categories);
        String[] productTypeSplit = productTypeTemp.split("-");
        ProductType productType = productTypeServices.findByID(Integer.parseInt(productTypeSplit[1]));
        product.setProductType(productType);

        Brand brand = brandServices.findByID(brandTemp);
        product.setBrand(brand);

        Timestamp now = new Timestamp(System.currentTimeMillis());
        product.setDate(now);

        long imgagename = System.currentTimeMillis();
        System.out.println(upFile(file, request, imgagename + ".jpg"));

        product.setIMG(imgagename + ".jpg");

        productServices.saveProduct(product);

        return new ModelAndView("redirect:" + "/viewProduct");
    }

    @RequestMapping(value = "/viewProduct", method = RequestMethod.GET)
    public String ViewAllProduct(ModelMap modelMap) {
        modelMap.addAttribute("listAllProduct", productServices.getAll());
        return "Product/viewAllProduct";
    }

    @RequestMapping(value = "/removeProduct", method = RequestMethod.POST)
    public void DeleteProduct(String id, HttpServletResponse response) {
        productServices.deleteProduct(id);
        try {
            response.getWriter().println("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/editProduct", method = RequestMethod.POST)
    public ModelAndView editProduct(Product product, Integer[] categoryTemp, HttpServletRequest
            request, HttpServletResponse response, @RequestParam("file") MultipartFile file, Integer brandTemp
            , Integer productTypeTemp) {
        Set<Category> categoryList = new HashSet<Category>();
        for (int i = 0; i < categoryTemp.length; i++) {
            Category category = categoryServices.findByID(categoryTemp[i]);
            categoryList.add(category);
        }
        product.setCategory(categoryList);
        product.setBrand(brandServices.findByID(brandTemp));
        product.setProductType(productTypeServices.findByID(productTypeTemp));
        String img = productServices.getProductById(product.getId()).getIMG();
        product.setIMG(img);
        productServices.saveProduct(product);
        System.out.println(upFile(file, request, img));
        return new ModelAndView("redirect:" + "/viewProduct");
    }


    @RequestMapping(value = "/findProductByID", method = RequestMethod.GET)
    public String FindPaymentByID(@RequestParam("id") String id, ModelMap modelMap) {
        modelMap.addAttribute("product", productServices.getProductById(id));
        modelMap.addAttribute("listCategory", categoryServices.getAllCategory());
        return "Product/viewAndEditProduct";
    }

    public String upFile(MultipartFile file, HttpServletRequest request, String filename) {
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                String path = request.getSession().getServletContext().getRealPath("/resources/images/");
                Timestamp now = new Timestamp(System.currentTimeMillis());
                // Creating the directory to store file
                BufferedOutputStream bout = new BufferedOutputStream(
                        new FileOutputStream(path + "/" + filename));
                bout.write(bytes);
                bout.flush();
                bout.close();

                return "You successfully uploaded file=";
            } catch (Exception e) {
                return "You failed to upload  => " + e.getMessage();
            }
        } else {
            return "You failed to upload  because the file was empty.";
        }
    }
}
