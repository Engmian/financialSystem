package com.financial.service;

import com.financial.entity.Product;
import org.apache.ibatis.annotations.Param;

/**
 * @Author:
 * @Date: 2018/2/26 18:00
 * @Description:
 */
public interface ProductService {


    //条数,用于分页
    public int count();
    //新手类型
    public Product findNoviceType(@Param("pro_id")int pro_id);
    //沪深类型
    public Product findHuShenMark(@Param("pro_id")int pro_id);
    //获取沪深30\60\90类型
    public Product findHuShen(@Param("pro_id")int pro_id);
}
