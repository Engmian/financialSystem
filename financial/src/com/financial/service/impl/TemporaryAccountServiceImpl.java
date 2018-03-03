package com.financial.service.impl;

import com.financial.dao.TemporaryAccountMapper;
import com.financial.entity.Temporary_account;
import com.financial.service.TemporaryAccountService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @Author:
 * @Date: 2018/3/3 11:40
 * @Description:
 */
@Service("temporaryAccountServiceImpl")
public class TemporaryAccountServiceImpl implements TemporaryAccountService{
    @Resource
    private TemporaryAccountMapper temporaryAccountMapper;
    @Override
    public Temporary_account findTemporary_account(String uPhone) {
        return temporaryAccountMapper.findTemporary_account(uPhone);
    }
}
