package com.financial.entity;

import java.io.Serializable;

public class User implements Serializable {
    private int uid;
    private String uPhone;
    private String uPwd;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUphone() {
        return uPhone;
    }

    public void setUphone(String uPhone) {
        this.uPhone = uPhone;
    }

    public String getUpwd() {
        return uPwd;
    }

    public void setUpwd(String uPwd) {
        this.uPwd = uPwd;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uPhone='" + uPhone + '\'' +
                ", uPwd='" + uPwd + '\'' +
                '}';
    }
}
