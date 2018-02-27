package com.financial.service.impl;

import com.financial.dao.ProductMapper;
import com.financial.entity.Product;
import com.financial.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @Author:
 * @Date: 2018/2/26 18:01
 * @Description:
 */
@Service("productServiceImpl")
public class ProductServiceImpl implements ProductService {
   @Resource
    private ProductMapper productMapper;
    @Override
    public Product findNoviceType(int pro_id) {
        return productMapper.findNoviceType(pro_id);
    }

    @Override
    public int count() {
        return productMapper.count();
    }
}
