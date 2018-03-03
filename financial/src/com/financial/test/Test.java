package com.financial.test;

import com.financial.entity.*;
import com.financial.service.NewsService;
import com.financial.service.ProductService;
import com.financial.service.TemporaryAccountService;
import com.financial.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/2/9 15:44
 * @Description:
 */
public class Test {
    public static void main(String[] args) {
        /*ApplicationContext act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
        NewsService newsService =(NewsService) act.getBean("newsServiceImpl");
        List<News> newsList = newsService.findNews('1');
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
        String dateStr=null;
        String ntitle=null;
        List<String> dateTitleList=new ArrayList<String>();
        for (News newsNoticeList :
                newsList) {
            ntitle= newsNoticeList.getNtitle();
            dateStr = sdf.format(newsNoticeList.getNdate());
            dateTitleList.add(ntitle);
            dateTitleList.add(dateStr);
        }

        for (String str :
                dateTitleList) {
            System.out.println(str.toString());
        }*/

        ApplicationContext act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
        TemporaryAccountService temporaryAccountService = (TemporaryAccountService)act.getBean("temporaryAccountServiceImpl");
        Temporary_account temporary_account = temporaryAccountService.findTemporary_account("15971627982");
        System.out.println(temporary_account.toString());
    }
}
