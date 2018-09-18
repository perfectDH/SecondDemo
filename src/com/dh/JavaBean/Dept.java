package com.dh.JavaBean;

import java.util.Date;

public class Dept {
    private Integer deptid;
    private String deptname;
    private Date dcreattime;

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    public Date getDcreattime() {
        return dcreattime;
    }

    public void setDcreattime(Date dcreattime) {
        this.dcreattime = dcreattime;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "deptid=" + deptid +
                ", deptname='" + deptname + '\'' +
                ", dcreattime=" + dcreattime +
                '}';
    }
}
