package com.dh.JavaBean;

public class User {
    /*
    用户表具备的内容
    姓名
    密码
    手机号
    身份证号
    用户状态
    学历
     */
    private Integer uid;
    private String username;
    private String password;
    private String uphone;
    private String ubodyid;
    private String ueducation;


    //部门id
    private Integer deptid;
    //职位id
    private Integer pid;

    private int ustruts;

    public User() {
    }

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getUeducation() {
        return ueducation;
    }

    public void setUeducation(String ueducation) {
        this.ueducation = ueducation;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUbodyid() {
        return ubodyid;
    }

    public void setUbodyid(String ubodyid) {
        this.ubodyid = ubodyid;
    }

    public int getUstruts() {
        return ustruts;
    }

    public void setUstruts(int ustruts) {
        this.ustruts = ustruts;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", uphone='" + uphone + '\'' +
                ", ubodyid='" + ubodyid + '\'' +
                ", ueducation='" + ueducation + '\'' +
                ", deptid=" + deptid +
                ", pid=" + pid +
                ", ustruts=" + ustruts +
                '}';
    }
}
