package com.financial.service;

import com.financial.entity.Product;
import org.apache.ibatis.annotations.Param;

/**
 * @Author:
 * @Date: 2018/2/26 18:00
 * @Description:
 */
public interface ProductService {
    public Product findNoviceType(@Param("pro_id") int pro_id);
    //条数,用于分页
    public int count();
}
