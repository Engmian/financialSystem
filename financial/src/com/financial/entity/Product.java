package com.financial.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * @Author:
 * @Date: 2018/2/26 15:39
 * @Description:产品信息表实体类
 */
public class Product implements Serializable{
    private int pro_id;
    private int pro_name;
    private String pro_type;//类型
    private String pro_pro;//收益率
    private int pro_day;//投资期限
    private int pro_total;//投资总额
    private String back_type;//还款方式
    private Date pro_build;//创建日期
    private int pro_surplus_time;//剩余时间
    private int pro_can_investment_money;//可投资金额
    private Date pro_start_time;//起息时间
    private String pro_desc;//产品描述
    private String pro_use;//借款用途
    private String pro_source;//还款来源
    private String pro_protect;//还款保障
    private String pro_fi;//投资条件
    private int pro_canUser;//是否可以投资
    private int stage;//第几期

    private double platform_discount;//平台贴息

    private String pro_cim_toString;//数字表达式

    public int getPro_id() {
        return pro_id;
    }

    public void setPro_id(int pro_id) {
        this.pro_id = pro_id;
    }

    public String getPro_type() {
        return pro_type;
    }

    public void setPro_type(String pro_type) {
        this.pro_type = pro_type;
    }

    public String getPro_pro() {
        return pro_pro;
    }

    public void setPro_pro(String pro_pro) {
        this.pro_pro = pro_pro;
    }

    public int getPro_day() {
        return pro_day;
    }

    public void setPro_day(int pro_day) {
        this.pro_day = pro_day;
    }

    public int getPro_total() {
        return pro_total;
    }

    public void setPro_total(int pro_total) {
        this.pro_total = pro_total;
    }

    public String getBack_type() {
        return back_type;
    }

    public void setBack_type(String back_type) {
        this.back_type = back_type;
    }

    public Date getPro_build() {
        return pro_build;
    }

    public void setPro_build(Date pro_build) {
        this.pro_build = pro_build;
    }

    public int getPro_surplus_time() {
        return pro_surplus_time;
    }

    public void setPro_surplus_time(int pro_surplus_time) {
        this.pro_surplus_time = pro_surplus_time;
    }

    public int getPro_can_investment_money() {
        return pro_can_investment_money;
    }

    public void setPro_can_investment_money(int pro_can_investment_money) {
        this.pro_can_investment_money = pro_can_investment_money;
    }

    public Date getPro_start_time() {
        return pro_start_time;
    }

    public void setPro_start_time(Date pro_start_time) {
        this.pro_start_time = pro_start_time;
    }

    public String getPro_desc() {
        return pro_desc;
    }

    public void setPro_desc(String pro_desc) {
        this.pro_desc = pro_desc;
    }

    public String getPro_use() {
        return pro_use;
    }

    public void setPro_use(String pro_use) {
        this.pro_use = pro_use;
    }

    public String getPro_source() {
        return pro_source;
    }

    public void setPro_source(String pro_source) {
        this.pro_source = pro_source;
    }

    public String getPro_protect() {
        return pro_protect;
    }

    public void setPro_protect(String pro_protect) {
        this.pro_protect = pro_protect;
    }

    public String getPro_fi() {
        return pro_fi;
    }

    public void setPro_fi(String pro_fi) {
        this.pro_fi = pro_fi;
    }

    public int getPro_canUser() {
        return pro_canUser;
    }

    public void setPro_canUser(int pro_canUser) {
        this.pro_canUser = pro_canUser;
    }

    public int getStage() {
        return stage;
    }

    public void setStage(int stage) {
        this.stage = stage;
    }

    public double getPlatform_discount() {
        return platform_discount;
    }

    public void setPlatform_discount(double platform_discount) {
        this.platform_discount = platform_discount;
    }
    public int getPro_name() {
        return pro_name;
    }

    public void setPro_name(int pro_name) {
        this.pro_name = pro_name;
    }

    public String getPro_cim_toString() {
        return pro_cim_toString;
    }

    public void setPro_cim_toString(String pro_cim_toString) {
        this.pro_cim_toString = pro_cim_toString;

    }
}
