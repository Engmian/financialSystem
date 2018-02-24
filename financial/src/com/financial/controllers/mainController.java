package com.financial.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main")
public class mainController {

    @RequestMapping("/home")
    public String goHome(){

        return "mainPage";
    }

}
