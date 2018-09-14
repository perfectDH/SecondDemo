package com.dh.Services.Iml;

import com.dh.Dao.AdminDao;
import com.dh.JavaBean.*;
import com.dh.Services.AdminServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("AdminServices")
public class AdminServicesIml implements AdminServices {
    @Autowired
    private AdminDao adminDao;
    @Override
    public Admin login(String name, String password) {
        return adminDao.login(name,password);
    }

    @Override
    public void adminRelease(Recruit recruit) {
        recruit.setRid(adminDao.selectCount()+1);
        recruit.setRecruitdate(new Date());
        adminDao.adminRelease(recruit);
    }

    //查询所有简历
    @Override
    public List<remuse> findAllremuse() {

        return adminDao.findAllremuse();
    }

    @Override
    public remuse findremusebyid(Integer id) {
        return adminDao.findremusebyid(id);
    }

    @Override
    public User findUserbyname(String username) {
        return adminDao.findUserbyname(username);
    }

    @Override
    public void addemployee(employee e) {
        adminDao.addemployee(e);
    }

    @Override
    public void deleteremuse(Integer id) {
        adminDao.deleteremuse(id);
    }

    @Override
    public void updateRemuseStruts(Integer id) {
        adminDao.updateRemuseStruts(id);
    }

    @Override
    public List<employee> selectEmployee() {
        return adminDao.selectEmployee();
    }
}
