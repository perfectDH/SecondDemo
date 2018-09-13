package com.dh.JavaBean;

public class Admin {
    private String admin;
    private String password;

    public Admin() {
    }

    public String getAdmin() {
        return admin;
    }

    public void setAdmin(String admin) {
        this.admin = admin;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "admin='" + admin + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
