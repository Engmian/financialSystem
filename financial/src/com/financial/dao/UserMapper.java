package com.financial.dao;

import com.financial.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

public interface UserMapper {
    //单查
    User findUserList(@Param("uPhone")String uPhone,@Param("uPwd")String uPwd);
    //注册（组长思路）
    /*int createUser(@Param("uPhone")String uPhone, @Param("uPwd")String uPwd, @RequestParam(value = "invite",required = false)String invite);*/
    //注册
    int createUser(@Param("uPhone")String uPhone, @Param("uPwd")String uPwd);
    //通过查询表中的电话号码，判断用户输入的邀请函是否是数据已经存在的用户，如果不存在，则提示用户推荐人不存在，让邀请人为空
    String findUseruphone(@Param("uPhone")String uPhone);
}
