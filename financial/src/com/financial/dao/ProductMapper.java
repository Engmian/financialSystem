package com.financial.dao;

import com.financial.entity.Product;
import org.apache.ibatis.annotations.Param;

/**
 * @Author:
 * @Date: 2018/2/26 17:53
 * @Description:
 */
public interface ProductMapper {
    //获取新手类型、年收益率、投资期限、第几期
    public Product findNoviceType(@Param("pro_id") int pro_id);
    //条数,用于分页
    public int count();
    //


}
