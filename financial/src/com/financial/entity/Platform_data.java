package com.financial.entity;

/**
<<<<<<< Updated upstream
 * @Author:
 * @Date: 2018/2/24 18:29
 * @Description:
 */
public class Platform_data {



    private int pid;
    private double cumulative_investment;//累计投资金额（根据不同的每个人投资金额累加，获得累计总额）
    private double profit; //已为用户赚取收益（总的收益-累计投资金额）
    private int platform_use; //平台用户人数（平台用户总人数）

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public double getCumulative_investment() {
        return cumulative_investment;
    }

    public void setCumulative_investment(double cumulative_investment) {
        this.cumulative_investment = cumulative_investment;
    }

    public double getProfit() {
        return profit;
    }

    public void setProfit(double profit) {
        this.profit = profit;
    }

    public int getPlatform_use() {
        return platform_use;
    }

    public void setPlatform_use(int platform_use) {
        this.platform_use = platform_use;
    }


}
