package com.financial.service;

import com.financial.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    //全查
    User findUserList(String uphone);
}

