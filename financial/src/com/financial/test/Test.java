package com.financial.test;

import com.financial.entity.Product;
import com.financial.service.ProductService;
import com.financial.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @Author:
 * @Date: 2018/2/9 15:44
 * @Description:
 */
public class Test {
    public static void main(String[] args) {
        ApplicationContext act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
        /*UserService userService =(UserService) act.getBean("userServiceImpl");
        String useruphone = userService.findUseruphone("18588450732");

        System.out.println(useruphone);*/

        ProductService productService = (ProductService)act.getBean("productServiceImpl");
        Product noviceType = productService.findNoviceType(1);
        System.out.println(noviceType.getPro_day());
    }
}
