package com.financial.dao;

import com.financial.entity.Temporary_account;
import org.apache.ibatis.annotations.Param;

/**
 * @Author:
 * @Date: 2018/3/3 11:34
 * @Description:
 */
public interface TemporaryAccountMapper {
    public Temporary_account findTemporary_account(@Param("uPhone")String uPhone);
}
