package com.financial.service;

import com.financial.entity.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/1 11:23
 * @Description:
 */
public interface NewsService {
    public List<News> findNews(@Param("ntype")char ntype);
}
