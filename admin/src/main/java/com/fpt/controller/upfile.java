package com.fpt.controller;/*
  By Chi Can Em  21-01-2018
 */

import com.fpt.services.administrator.AdministratorServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

@Controller
public class upfile {
    @Autowired
    AdministratorServices administratorServices;
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public String uploadFileHandler(
            @RequestParam("file") MultipartFile file, HttpServletRequest request) {

        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                String path = request.getSession().getServletContext().getRealPath("/resources/images/");
                String filename = file.getOriginalFilename();
                // Creating the directory to store file
                BufferedOutputStream bout = new BufferedOutputStream(
                        new FileOutputStream(path + "/" + filename));
                bout.write(bytes);
                bout.flush();
                bout.close();

                return "You successfully uploaded file=" ;
            } catch (Exception e) {
                return "You failed to upload  => " + e.getMessage();
            }
        } else {
            return "You failed to upload  because the file was empty.";
        }
    }

    @RequestMapping(value = "/update")
    private String update() {
        return "upfile";
    }
}
