package com.financial.dao;

import com.financial.entity.User;

import java.util.List;

public interface UserMapper {
    //全查
    List<User> findAll();

}
