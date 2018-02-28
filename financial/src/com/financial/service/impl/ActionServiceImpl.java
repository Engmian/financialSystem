package com.financial.service.impl;

import com.financial.dao.ActionMapper;
import com.financial.entity.Action;
import com.financial.service.ActionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("actionServiceImpl")
public class ActionServiceImpl implements ActionService{

    @Resource
    private ActionMapper actionMapper;
    @Override
    public List<Action> selectActions() {
        return actionMapper.selectActions();
    }
}
