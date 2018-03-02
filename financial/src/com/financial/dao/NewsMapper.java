package com.financial.dao;

import com.financial.entity.News;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/1 11:10
 * @Description:
 */
public interface NewsMapper {
    public List<News> findNews(@Param("ntype")char ntype);
}
