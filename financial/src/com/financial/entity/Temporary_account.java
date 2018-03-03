package com.financial.entity;

import java.io.Serializable;

/**
 * @Author:
 * @Date: 2018/3/3 11:31
 * @Description:
 */
public class Temporary_account implements Serializable {
    private int taid;
    private double total_account;
    private double monetary;
    private int incomes;

    @Override
    public String toString() {
        return "Temporary_account{" +
                "taid=" + taid +
                ", total_account=" + total_account +
                ", monetary=" + monetary +
                ", incomes=" + incomes +
                '}';
    }

    public int getTaid() {
        return taid;
    }

    public void setTaid(int taid) {
        this.taid = taid;
    }

    public double getTotal_account() {
        return total_account;
    }

    public void setTotal_account(double total_account) {
        this.total_account = total_account;
    }

    public double getMonetary() {
        return monetary;
    }

    public void setMonetary(double monetary) {
        this.monetary = monetary;
    }

    public int getIncomes() {
        return incomes;
    }

    public void setIncomes(int incomes) {
        this.incomes = incomes;
    }
}
