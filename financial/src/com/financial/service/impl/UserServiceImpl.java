package com.financial.service.impl;

import com.financial.dao.UserMapper;
import com.financial.entity.User;
import com.financial.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public List<User> findAll() {
        System.out.println("222222222");
        return userMapper.findAll();
    }
}
