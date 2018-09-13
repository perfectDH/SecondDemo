package com.dh.JavaBean;

import java.util.Date;

public class remuse {
    //简历表
    private Integer reid;
    private String username;
    //职位
    private String position;
    private double pay;
    private String skill;
    //简历生成时间
    private Date createdate;
    //简历更新时间
    private Date update;

    //简历状态
    private Integer rstruts;

    public remuse() {
    }

    public Integer getRstruts() {
        return rstruts;
    }

    public void setRstruts(Integer rstruts) {
        this.rstruts = rstruts;
    }

    public Integer getReid() {
        return reid;
    }

    public void setReid(Integer reid) {
        this.reid = reid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public double getPay() {
        return pay;
    }

    public void setPay(double pay) {
        this.pay = pay;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date getUpdate() {
        return update;
    }

    public void setUpdate(Date update) {
        this.update = update;
    }

    @Override
    public String toString() {
        return "remuse{" +
                "reid=" + reid +
                ", username='" + username + '\'' +
                ", position='" + position + '\'' +
                ", pay=" + pay +
                ", skill='" + skill + '\'' +
                ", createdate=" + createdate +
                ", update=" + update +
                ", rstruts=" + rstruts +
                '}';
    }
}
