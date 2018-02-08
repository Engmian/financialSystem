package com.financial.service.impl;

import com.financial.dao.UserMapper;
import com.financial.entity.User;
import com.financial.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public User findUserList(String uPhone) {
        return userMapper.findUserList(uPhone);
    }

    @Override
    public int createUser(String uPhone, String uPwd, String invite) {
        return userMapper.createUser(uPhone,uPwd,invite);
    }
}
