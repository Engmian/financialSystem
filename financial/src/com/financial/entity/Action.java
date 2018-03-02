package com.financial.entity;

import java.io.Serializable;
import java.util.Date;

public class Action implements Serializable{

    private String act_name;//活动名称
    private Date act_time_start;//活动开始时间
    private Date act_time_end;//活动结束时间
    private String act_pic;//活动配图名字

    public String getAct_name() {
        return act_name;
    }

    public void setAct_name(String act_name) {
        this.act_name = act_name;
    }

    public Date getAct_time_start() {
        return act_time_start;
    }

    public void setAct_time_start(Date act_time_start) {
        this.act_time_start = act_time_start;
    }

    public Date getAct_time_end() {
        return act_time_end;
    }

    public void setAct_time_end(Date act_time_end) {
        this.act_time_end = act_time_end;
    }

    public String getAct_pic() {
        return act_pic;
    }

    public void setAct_pic(String act_pic) {
        this.act_pic = act_pic;
    }
}
