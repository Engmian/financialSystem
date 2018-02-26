package com.financial.controllers;

import com.financial.entity.Platform_data;
import com.financial.service.PlatformService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("main")
public class mainController {

    @Resource
    private PlatformService platformService;

    @RequestMapping("/home")
    public String goHome(){
        return "mainPage";
    }

    @RequestMapping("/showPlatfromData")
    public String showPlatfromData(Model model){
        Platform_data platformData = platformService.getPlatformDataList(1);
        model.addAttribute("platformData",platformData);
        return "welcome";
    }
}
