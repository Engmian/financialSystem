package com.financial.dao;

import com.financial.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //全查
    User findUserList(@Param("uphone")String uphone);

}
