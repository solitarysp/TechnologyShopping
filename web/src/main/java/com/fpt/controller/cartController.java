package com.fpt.controller;

import com.fpt.entity.Product;
import com.fpt.services.product.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class cartController{
    @Autowired
    ProductServices productServices;

    private List<Product> listProduct;

    @RequestMapping(value = "/cart.html")
    public String viewCart(HttpServletResponse response, HttpServletRequest request,ModelMap modelMap) throws IOException {
        HttpSession httpSession = request.getSession();
        listProduct = (ArrayList<Product>) httpSession.getAttribute("listCart");
        if(listProduct != null){
            modelMap.addAttribute("listProduct", listProduct);
        }
        return "cart";
    }
    @RequestMapping(value = "/addCartItem")
    public String addCartItem(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response){
        HttpSession httpSession = request.getSession();
        listProduct = (ArrayList<Product>) httpSession.getAttribute("listCart");
        if (listProduct == null) {
//        httpSession.setAttribute("listCart", listProduct);
//        try {
//            response.getWriter().println("add to cart success");
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
            listProduct = new ArrayList<Product>();
            Product p = productServices.getProductById(id);
            p.setRepository(1);
            listProduct.add(p);

        }else {
            if (checkExist(id) == null) {
                Product p = productServices.getProductById(id);
                p.setRepository(1);
                listProduct.add(p);
            } else {
                Product p = checkExist(id);
                listProduct.remove(p);
                p.setRepository(p.getRepository() + 1);
                listProduct.add(p);
            }
        }
        httpSession.setAttribute("listCart", listProduct);

        return "cart";
    }
    @RequestMapping(value = "/delCartItem")
    public String delItem(@RequestParam("id") String id,HttpServletRequest request){
        HttpSession httpSession = request.getSession();
        listProduct = (ArrayList<Product>) httpSession.getAttribute("listCart");
        c:
        for ( Product p: listProduct) {
            if(p.getId().equals(id)){
                listProduct.remove(p);
                break c;
            }

        }
        httpSession.setAttribute("listCart", listProduct);
        return "cart";
    }
    @RequestMapping(value = "/updateCart")
    public String updateCart(HttpServletRequest request, HttpServletResponse response){
        String[] id = request.getParameterValues("txtID");
        String[] quantity = request.getParameterValues("txtQuantity");
        HttpSession httpSession = request.getSession();
        listProduct = new ArrayList<Product>();
        for (int i = 0; i< quantity.length; i++){
            Product p = productServices.getProductById(id[i]);
            p.setRepository(Integer.parseInt(quantity[i]));
            listProduct.add(p);
        }
        httpSession.setAttribute("listCart", listProduct);
        return "cart";
    }
    private Product checkExist(String id) {
        for (Product p : listProduct) {
            if (p.getId().equals(id)) {
                return p;
            }
        }
        return null;
    }
}
