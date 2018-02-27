package com.financial.controllers;

import com.financial.entity.Platform_data;
import com.financial.entity.Product;
import com.financial.service.PlatformService;
import com.financial.service.ProductService;
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
    @Resource
    private ProductService productService;

    @RequestMapping("/home")
    public String goHome(Model model){
        //传平台数据
        Platform_data platformData = platformService.getPlatformDataList(1);
        model.addAttribute("platformData",platformData);
        //传新手类型数据
        Product noviceType = productService.findNoviceType(1);
        model.addAttribute("noviceType",noviceType);

        //传沪深活动标类型
        Product huShenMark = productService.findHuShenMark(2);
        model.addAttribute("huShenMark",huShenMark);

        //获取沪深30类型、年收益率、投资期限、平台贴息、第几期
        Product huShen30 = productService.findHuShen(3);
        model.addAttribute("huShen30",huShen30);

        //获取沪深60类型、年收益率、投资期限、平台贴息、第几期
        Product huShen60 = productService.findHuShen(4);
        model.addAttribute("huShen60",huShen60);

        //获取沪深90类型、年收益率、投资期限、平台贴息、第几期
        Product huShen90 =productService.findHuShen(5);
        model.addAttribute("huShen90",huShen90);

        return "mainPage";
    }
}
