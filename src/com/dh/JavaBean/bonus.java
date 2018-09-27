package com.dh.JavaBean;

import java.util.Date;

public class bonus {
    //将罚金
    private Integer bid;
    private double bup;
    private double bdown;
    private Integer uid;
    private Date ddate;

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public double getBup() {
        return bup;
    }

    public void setBup(double bup) {
        this.bup = bup;
    }

    public double getBdown() {
        return bdown;
    }

    public void setBdown(double bdown) {
        this.bdown = bdown;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Date getDdate() {
        return ddate;
    }

    public void setDdate(Date ddate) {
        this.ddate = ddate;
    }

    @Override
    public String toString() {
        return "bonus{" +
                "bid=" + bid +
                ", bup=" + bup +
                ", bdown=" + bdown +
                ", uid=" + uid +
                ", ddate=" + ddate +
                '}';
    }
}
