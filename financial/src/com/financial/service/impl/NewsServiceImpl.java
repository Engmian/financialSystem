package com.financial.service.impl;

import com.financial.dao.NewsMapper;
import com.financial.entity.News;
import com.financial.service.NewsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/1 11:24
 * @Description:
 */
@Service("newsServiceImpl")
public class NewsServiceImpl implements NewsService {
    @Resource
    private NewsMapper newsMapper;
    @Override
    public List<News> findNews(char ntype) {
        return newsMapper.findNews(ntype);
    }
}
