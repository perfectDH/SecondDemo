package com.dh.JavaBean;

import java.util.Date;
//招聘表
public class Recruit {
    private Integer rid;
    private String title;
    private String company;
    private String adminname;
    private String usermessage;
    //发布时间
    private Date recruitdate;

    //薪资安排
    private double pay;

    public Recruit() {
    }

    public double getPay() {
        return pay;
    }

    public void setPay(double pay) {
        this.pay = pay;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getUsermessage() {
        return usermessage;
    }

    public void setUsermessage(String usermessage) {
        this.usermessage = usermessage;
    }

    public Date getRecruitdate() {
        return recruitdate;
    }

    public void setRecruitdate(Date recruitdate) {
        this.recruitdate = recruitdate;
    }

    @Override
    public String toString() {
        return "Recruit{" +
                "rid=" + rid +
                ", title='" + title + '\'' +
                ", company='" + company + '\'' +
                ", adminname='" + adminname + '\'' +
                ", usermessage='" + usermessage + '\'' +
                ", recruitdate=" + recruitdate +
                ", pay=" + pay +
                '}';
    }
}
