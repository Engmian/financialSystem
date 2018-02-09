package com.financial.service;

import com.financial.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

public interface UserService {
    //全查
    User findUserList(String uPhone,String uPwd);
    //创建帐号
    /*int createUser(@Param("uPhone")String uPhone, @Param("uPwd")String uPwd, @RequestParam(value = "invite",required = false)String invite);*/

    int createUser(String uPhone, String uPwd);

    User findUseruphone(String uPhone);
}

