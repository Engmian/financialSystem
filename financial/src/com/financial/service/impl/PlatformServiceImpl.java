package com.financial.service.impl;

import com.financial.dao.PlatformMapper;
import com.financial.entity.Platform_data;
import com.financial.service.PlatformService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("platformServiceImpl")
public class PlatformServiceImpl implements PlatformService{
    @Resource
    private PlatformMapper platformMapper;
    @Override
    public Platform_data getPlatformDataList(int pid) {
        return platformMapper.getPlatformDataList(pid);
    }
}
