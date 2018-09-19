package com.dh.Services.Iml;

import com.dh.Dao.AdminDao;
import com.dh.JavaBean.*;
import com.dh.Services.AdminServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
    public void deleteremuse(Integer id) {
        adminDao.deleteremuse(id);
    }

    @Override
    public void updateRemuseStruts(Integer id) {
        adminDao.updateRemuseStruts(id);
    }


    @Override
    public void updateUser(Integer uid) {
        adminDao.updateUser(uid);
    }

    @Override
    public List<User> findUserbyStruts() {
        return adminDao.findUserbyStruts();
    }

    @Override
    public void addDept(String deptname, Date date) {
        adminDao.addDept(deptname,date);
    }

    @Override
    public List<Dept> selectDept() {

        return adminDao.selectDep();
    }

    @Override
    public void addPosi(Integer deptid, String posiname) {
        adminDao.addPosi(deptid,posiname);
    }

    @Override
    public User findUserByid(Integer uid) {

        return adminDao.findUserByid(uid);
    }

    @Override
    public List<posi> findPosiBydeptid(Integer deptid) {
        return adminDao.findPosiBydeptid(deptid);
    }

    @Override
    public void updateEmployeeBydept(String username, Integer deptid, Integer posiid) {
        //根据id查询用户
        User user=adminDao.findUserbyname(username);
        user.setUstruts(1);
        int struts=user.getUstruts();
        adminDao.updateEmployeeBydept(user.getUid(),deptid,posiid,struts);
    }

    @Override
    public List<UserDetils> findEmployeeBydeptandposi(Integer dept, Integer posi) {
        //根据部门id和职位id查询员工
        List<User> list=adminDao.findUser(dept,posi);
        //根据部门id查询部门名称
        String deptname=adminDao.finddeptname(dept);
        //根据部门id查询部门名称
        String posiname=adminDao.findposiname(dept,posi);
        List<UserDetils> newlist=new ArrayList<UserDetils>();
        for(int i=0;i<list.size();i++){
            UserDetils u=new UserDetils();
            u.setUser(list.get(i));
            u.setDeptname(deptname);
            u.setPosiname(posiname);
            u.setCtotals(adminDao.findtotal(list.get(i).getUid()));
            newlist.add(u);
        }
        return newlist;
    }

    @Override
    public List<UserDetils> findEmplyBydeptid(Integer dept) {
        List<User> list=adminDao.findUserbydept(dept);
        //根据部门id查询部门名称
        String deptname=adminDao.finddeptname(dept);
        //根据部门id查询部门名称
        List<UserDetils> newlist=new ArrayList<UserDetils>();
        for(int i=0;i<list.size();i++){
            UserDetils u=new UserDetils();
            u.setUser(list.get(i));
            u.setDeptname(deptname);
            u.setCtotals(adminDao.findtotal(list.get(i).getUid()));
            newlist.add(u);
        }
        return newlist;
    }
}
