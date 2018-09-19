package com.dh.JavaBean;

public class posi {
    private Integer posiid;
    private String posiname;
    private Integer deptid;

    public Integer getPosiid() {
        return posiid;
    }

    public void setPosiid(Integer posiid) {
        this.posiid = posiid;
    }

    public String getPosiname() {
        return posiname;
    }

    public void setPosiname(String posiname) {
        this.posiname = posiname;
    }

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

    @Override
    public String toString() {
        return "posi{" +
                "posiid=" + posiid +
                ", posiname='" + posiname + '\'' +
                ", deptid=" + deptid +
                '}';
    }
}
