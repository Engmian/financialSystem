package com.financial.dao;

import com.financial.entity.Action;

import java.util.List;

public interface ActionMapper {

    List<Action> selectActions();
}
