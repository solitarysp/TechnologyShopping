package com.fpt.controller;/*
  By Chi Can Em  04-02-2018
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HackerController {
    @RequestMapping(value = "/hacker")
    public String showHacker() {
        return "Hacker";
    }
}
