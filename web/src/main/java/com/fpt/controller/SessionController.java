package com.fpt.controller;/*
  By Chi Can Em  05-02-2018
 */

import com.fpt.entity.entity2.CountSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class SessionController {
    @RequestMapping(value = "/getTotalOnlineWithSession")
    public void getTotalOnlineWithSession(HttpServletResponse response) {
        try {
            response.getWriter().println(CountSession.getCountSession().getTotal());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
