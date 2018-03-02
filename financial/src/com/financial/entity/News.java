package com.financial.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author:
 * @Date: 2018/3/1 11:04
 * @Description:
 */
public class News implements Serializable{
    private int nid;
    private char ntype;//新闻类型
    private String ntitle;//新闻类型
    private String ncontent;//新闻内容
    private Date ndate;//新闻日期

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public char getNtype() {
        return ntype;
    }

    public void setNtype(char ntype) {
        this.ntype = ntype;
    }

    public String getNtitle() {
        return ntitle;
    }

    public void setNtitle(String ntitle) {
        this.ntitle = ntitle;
    }

    public String getNcontent() {
        return ncontent;
    }

    public void setNcontent(String ncontent) {
        this.ncontent = ncontent;
    }

    public Date getNdate() {
        return ndate;
    }

    public void setNdate(Date ndate) {
        this.ndate = ndate;
    }
}
