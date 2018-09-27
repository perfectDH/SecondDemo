package com.dh.JavaBean;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Cadets {

    private Integer cadetsid;
    private String cadetstitle;
    private String cadetsmessage;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date begindate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enddate;
    private Integer uid;

    public Integer getCadetsid() {
        return cadetsid;
    }

    public void setCadetsid(Integer cadetsid) {
        this.cadetsid = cadetsid;
    }

    public String getCadetstitle() {
        return cadetstitle;
    }

    public void setCadetstitle(String cadetstitle) {
        this.cadetstitle = cadetstitle;
    }

    public String getCadetsmessage() {
        return cadetsmessage;
    }

    public void setCadetsmessage(String cadetsmessage) {
        this.cadetsmessage = cadetsmessage;
    }

    public Date getBegindate() {
        return begindate;
    }

    public void setBegindate(Date begindate) {
        this.begindate = begindate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "Cadets{" +
                "cadetsid=" + cadetsid +
                ", cadetstitle='" + cadetstitle + '\'' +
                ", cadetsmessage='" + cadetsmessage + '\'' +
                ", begindate=" + begindate +
                ", enddate=" + enddate +
                ", uid=" + uid +
                '}';
    }
}
