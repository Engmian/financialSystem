package com.financial.dao;

import com.financial.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface UserMapper {
    //单查
    User findUserList(@Param("uPhone")String uPhone);
    //注册
    int createUser(@Param("uPhone")String uPhone, @Param("uPwd")String uPwd, @RequestParam(value = "invite",required = false)String invite);

}
