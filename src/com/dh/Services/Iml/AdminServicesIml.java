package com.dh.Services.Iml;

import com.dh.Dao.AdminDao;
import com.dh.JavaBean.*;
import com.dh.Services.AdminServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service("AdminServices")
public class AdminServicesIml implements AdminServices {
    @Autowired
    private AdminDao adminDao;

    @Override
    public Admin login(String name, String password) {
        return adminDao.login(name, password);
    }

    @Override
    public void adminRelease(Recruit recruit) {
        recruit.setRid(adminDao.selectCount() + 1);
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
        adminDao.addDept(deptname, date);
    }

    @Override
    public List<Dept> selectDept() {

        return adminDao.selectDep();
    }

    @Override
    public void addPosi(Integer deptid, String posiname) {
        adminDao.addPosi(deptid, posiname);
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
        User user = adminDao.findUserbyname(username);
        user.setUstruts(2);
        int struts = user.getUstruts();
        adminDao.updateEmployeeBydept(user.getUid(), deptid, posiid, struts);
    }

    @Override
    public List<UserDetils> findEmployeeBydeptandposi(Integer dept, Integer posi) {
        //根据部门id和职位id查询员工
        List<User> list = adminDao.findUser(dept, posi);
        //根据部门id查询部门名称
        String deptname = adminDao.finddeptname(dept);
        //根据部门id查询部门名称
        String posiname = adminDao.findposiname(dept, posi);
        List<UserDetils> newlist = new ArrayList<UserDetils>();
        for (int i = 0; i < list.size(); i++) {
            UserDetils u = new UserDetils();
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
        List<User> list = adminDao.findUserbydept(dept);
        //根据部门id查询部门名称
        String deptname = adminDao.finddeptname(dept);
        //根据部门id查询部门名称
        List<UserDetils> newlist = new ArrayList<UserDetils>();
        for (int i = 0; i < list.size(); i++) {
            UserDetils u = new UserDetils();
            u.setUser(list.get(i));
            u.setDeptname(deptname);
            u.setCtotals(adminDao.findtotal(list.get(i).getUid()));
            newlist.add(u);
        }
        return newlist;
    }

    @Override
    public void updateStruts(User user) {
        Integer uid = user.getUid();
        Integer ustruts = user.getUstruts();
        adminDao.updateStruts(uid, ustruts);
    }

    @Override
    public void saveCadets(Cadets cadets) {
        adminDao.saveCadets(cadets);
    }

    @Override
    public List<EmployeePay> selectClocking() {
        List<EmployeePay> employeePay = new ArrayList<EmployeePay>();
        //查询所有员工
        List<User> userList = adminDao.selectAllUser();

        //根据每个员工的i的查询每个员工的打卡次数
        for (int i = 0; i < userList.size(); i++) {
            //正常上班打卡
            int begin = adminDao.findBegincstruts(userList.get(i).getUid());
            int end = adminDao.findEndcstruts(userList.get(i).getUid());
            int late = adminDao.findLatecstruts(userList.get(i).getUid());
            //查询员工的赏金和罚金,未完成，根据时间模糊查询
            Double upMoney = adminDao.findupMoney(userList.get(i).getUid());
            Double downMoney = adminDao.findwoenMoney(userList.get(i).getUid());


            EmployeePay ep = new EmployeePay();
            if (late == 0 & Calendar.getInstance(Locale.CHINA).getActualMaximum(Calendar.DATE) == ((begin + end) / 2)) {
                //全勤
                ep.setUid(userList.get(i).getUid());
                ep.setUsername(userList.get(i).getUsername());
                ep.setPay(((begin + end) / 2) * 300);
                if(upMoney!=null){
                    ep.setUpMoney(upMoney + 1000);
                }
                ep.setDownMoney(downMoney);
                employeePay.add(ep);
            } else {
                ep.setUid(userList.get(i).getUid());
                ep.setUsername(userList.get(i).getUsername());
                ep.setPay(((begin + end) / 2) * 300);
                if(downMoney!=null){
                    ep.setDownMoney(downMoney);
                }
                employeePay.add(ep);
            }

        }
        //计算正常打卡的天数
        return employeePay;
    }

    @Override
    public List<posi> SelectAllPosi() {
        return adminDao.SelectAllPosi();
    }

    @Override
    public void updateDeptname(String updateDeptname, Integer deptid) {
        Dept d=new Dept();
        d.setDeptname(updateDeptname);
        d.setDeptid(deptid);
        adminDao.updateDeptname(d);
    }

    @Override
    public void updatePosi(String updatePosiname, Integer posiid) {
        posi p=new posi();
        p.setPosiname(updatePosiname);
        p.setPosiid(posiid);
        adminDao.updatePosi(p);
    }

    @Override
    public boolean deleteDept(Integer deptid) {
        //删除之前线查询是否有员工
        List<User> u=adminDao.selectAllUser();
        for(int i=0;i<u.size();i++){
            if(u.get(i).getDeptid()==deptid){
                return false;
            }
        }
        adminDao.deleteDept(deptid);
        return true;
    }

    @Override
    public boolean deletePosi(Integer posiid) {

        List<User> u=adminDao.selectAllUser();
        for(int i=0;i<u.size();i++){
            if(u.get(i).getPid()==posiid){
                return false;
            }
        }
        adminDao.deletePosi(posiid);
        return true;
    }
}
