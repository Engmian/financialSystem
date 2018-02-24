package com.financial.test;

import com.financial.entity.User;
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
        UserService userService = (UserService) act.getBean("userServiceImpl");
        /*User useruphone = userService.findUseruphone("13546270677");*/
        int userCreate=-1;
        userCreate = userService.createUser("18588450732", "456789");

            System.out.println(userCreate);


    }
}
