package com.dh.JavaBean;

public class UserDetils {
    //员工的封装嘞
    private User user;

    //部门名称
    private String deptname;
    //职位名称
    private String posiname;
    //奖惩记录
    private Integer rtotal;
    //培训记录
    private Integer ctotals;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    public String getPosiname() {
        return posiname;
    }

    public void setPosiname(String posiname) {
        this.posiname = posiname;
    }

    public Integer getRtotal() {
        return rtotal;
    }

    public void setRtotal(Integer rtotal) {
        this.rtotal = rtotal;
    }

    public Integer getCtotals() {
        return ctotals;
    }

    public void setCtotals(Integer ctotals) {
        this.ctotals = ctotals;
    }

    @Override
    public String toString() {
        return "UserDetils{" +
                "user=" + user +
                ", deptname='" + deptname + '\'' +
                ", posiname='" + posiname + '\'' +
                ", rtotal=" + rtotal +
                ", ctotals=" + ctotals +
                '}';
    }
}
