package com.financial.service;

import com.financial.entity.Temporary_account;
import org.apache.ibatis.annotations.Param;

/**
 * @Author:
 * @Date: 2018/3/3 11:39
 * @Description:
 */
public interface TemporaryAccountService {
    public Temporary_account findTemporary_account(@Param("uPhone")String uPhone);
}
