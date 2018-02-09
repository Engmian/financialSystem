package com.financial.service.impl;

import com.financial.dao.UserMapper;
import com.financial.entity.User;
import com.financial.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public User findUserList(String uPhone,String uPwd) {
        return userMapper.findUserList(uPhone,uPwd);
    }

    @Override
    public int createUser(String uPhone, String uPwd) {
        return userMapper.createUser(uPhone,uPwd);
    }

    @Override
    public User findUseruphone(String uPhone) {
        return userMapper.findUseruphone(uPhone);
    }

    /*@Override
    public int createUser(String uPhone, String uPwd, String invite) {
        return userMapper.createUser(uPhone,uPwd,invite);
    }*/
}
