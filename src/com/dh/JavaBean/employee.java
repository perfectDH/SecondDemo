package com.dh.JavaBean;

import java.util.Date;

public class employee {
//    员工id，员工姓名，员工所在部门，员工的薪资，员工的奖惩记录，员工的入职时间，员工所受的培训记录，员工的考勤。员工的职位，员工的状态（是否离职）
    private Integer eid;
    private String ename;
    private Integer did;
    private double pay;
    //奖惩记录
    private String rewards;
    //入职时间
    private Date date;
    //员工所受的培训记录
    private Integer pid;
    private int estruts;

    public employee() {
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public double getPay() {
        return pay;
    }

    public void setPay(double pay) {
        this.pay = pay;
    }

    public String getRewards() {
        return rewards;
    }

    public void setRewards(String rewards) {
        this.rewards = rewards;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public int getEstruts() {
        return estruts;
    }

    public void setEstruts(int estruts) {
        this.estruts = estruts;
    }

    @Override
    public String toString() {
        return "employee{" +
                "eid=" + eid +
                ", ename='" + ename + '\'' +
                ", did=" + did +
                ", pay=" + pay +
                ", rewards='" + rewards + '\'' +
                ", date=" + date +
                ", pid=" + pid +
                ", estruts=" + estruts +
                '}';
    }
}
