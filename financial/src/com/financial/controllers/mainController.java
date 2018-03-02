package com.financial.controllers;

import com.financial.entity.Action;
import com.financial.entity.NewType;
import com.financial.entity.News;
import com.financial.entity.Platform_data;
import com.financial.entity.Product;
import com.financial.service.ActionService;
import com.financial.service.NewsService;
import com.financial.service.PlatformService;
import com.financial.service.ProductService;
import com.financial.utils.PageUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.SimpleFormatter;

@Controller
@RequestMapping("main")
public class mainController {

    @Resource
    private PlatformService platformService;
    @Resource
    private ProductService productService;
    @Resource
    private ActionService actionService;
    @Resource
    private NewsService newsService;

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
        //获取媒体动态类型
        List<News> newsMedia = newsService.findNews('0');
        model.addAttribute("newsMedia",newsMedia);
        //获取网站公告类型
        List<News> newsNotice = newsService.findNews('1');
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
        //临时集合
         List<NewType>  newTypeList   = new ArrayList<NewType>();
        for (int i=0 ;i<newsNotice.size();i++){
            NewType newTypes   = new NewType();
            newTypes.setDateTime(sdf.format(newsNotice.get(i).getNdate()));
            newTypes.setType(newsNotice.get(i).getNtitle());
            newTypeList.add(newTypes);
        }
        model.addAttribute("dateTitleList",newTypeList);
        return "mainPage";
    }

    @RequestMapping("/bankBillList")
    public String goBankBillList(Model model) {
        List<Product> products = productService.selectProduct();
        for (Product product:products) {
            int num = product.getPro_can_investment_money();
            DecimalFormat df = new DecimalFormat("#,###");
            product.setPro_cim_toString(df.format(num));
        }
        model.addAttribute("productsList", products);
        return "bankBillList";
    }


    @RequestMapping("/actcenter")
    public String goActcenter(Model model){
        List<Action> actions = actionService.selectActions();

        model.addAttribute("actions",actions);
        return "actcenter";
    }
}
