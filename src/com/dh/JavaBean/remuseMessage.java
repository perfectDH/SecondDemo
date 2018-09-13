package com.dh.JavaBean;

import java.util.Date;

public class remuseMessage {
    //简历信息表
    private Integer rmid;
    private String rmname;
    private String rmposition;
    private double rmpay;
    private String rmskill;
    //简历信息生成的时间
    private Date rmdate;

    //简历表的id
    private Integer reid;

    //招聘表的id
    private Integer rid;

    //招聘表的题目
    private String rtitle;

    public remuseMessage() {
    }

    public Integer getRmid() {
        return rmid;
    }

    public void setRmid(Integer rmid) {
        this.rmid = rmid;
    }

    public String getRmname() {
        return rmname;
    }

    public void setRmname(String rmname) {
        this.rmname = rmname;
    }

    public String getRmposition() {
        return rmposition;
    }

    public void setRmposition(String rmposition) {
        this.rmposition = rmposition;
    }

    public double getRmpay() {
        return rmpay;
    }

    public void setRmpay(double rmpay) {
        this.rmpay = rmpay;
    }

    public String getRmskill() {
        return rmskill;
    }

    public void setRmskill(String rmskill) {
        this.rmskill = rmskill;
    }

    public Date getRmdate() {
        return rmdate;
    }

    public void setRmdate(Date rmdate) {
        this.rmdate = rmdate;
    }

    public Integer getReid() {
        return reid;
    }

    public void setReid(Integer reid) {
        this.reid = reid;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getRtitle() {
        return rtitle;
    }

    public void setRtitle(String rtitle) {
        this.rtitle = rtitle;
    }

    @Override
    public String toString() {
        return "remuseMessage{" +
                "rmid=" + rmid +
                ", rmname='" + rmname + '\'' +
                ", rmposition='" + rmposition + '\'' +
                ", rmpay=" + rmpay +
                ", rmskill='" + rmskill + '\'' +
                ", rmdate=" + rmdate +
                ", reid=" + reid +
                ", rid=" + rid +
                ", rtitle='" + rtitle + '\'' +
                '}';
    }
}
