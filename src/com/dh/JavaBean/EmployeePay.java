package com.dh.JavaBean;

import java.util.Date;

public class EmployeePay {
    //用户的姓名和id
    private Integer payid;
    private Integer uid;
    private String username;
    //赏金和罚金
    private Double upMoney;
    private Double downMoney;
    //员工的工资
    private double pay;
    //工资的结算时间
    private Date payDate;

    public Integer getPayid() {
        return payid;
    }

    public void setPayid(Integer payid) {
        this.payid = payid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Double getUpMoney() {
        return upMoney;
    }

    public void setUpMoney(Double upMoney) {
        this.upMoney = upMoney;
    }

    public Double getDownMoney() {
        return downMoney;
    }

    public void setDownMoney(Double downMoney) {
        this.downMoney = downMoney;
    }

    public double getPay() {
        return pay;
    }

    public void setPay(double pay) {
        this.pay = pay;
    }

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    @Override
    public String toString() {
        return "EmployeePay{" +
                "payid=" + payid +
                ", uid=" + uid +
                ", username='" + username + '\'' +
                ", upMoney=" + upMoney +
                ", downMoney=" + downMoney +
                ", pay=" + pay +
                ", payDate=" + payDate +
                '}';
    }
}
