package com.dh.Services.Iml;

import com.dh.Dao.UserDao;
import com.dh.JavaBean.*;
import com.dh.Services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service("UserServices")
public class UserSevicesIml implements UserServices {
    @Autowired
    private UserDao userDao;

    @Override
    public User userLogin(String username, String password) {
        return userDao.userLogin(username,password);
    }

    @Override
    public List<Recruit> findMessage() {
        return userDao.findMessage();
    }

    @Override
    public void saveremuse(remuse rr) {
        rr.setReid(userDao.selectCount()+1);
        userDao.saveremuse(rr);
    }

    @Override
    public Recruit findRecruitByid(Integer rid) {
        return userDao.findRecruitByid(rid);
    }

    @Override
    public User findUserbyid(Integer uid) {
        return userDao.findUserbyid(uid);
    }

    @Override
    public List<remuse> findRemusebuName(String username) {

        return userDao.findRemusebuName(username);
    }

    @Override
    public String selectDept(Integer deptid) {
        return userDao.selectDept(deptid);
    }

    @Override
    public String selectposi(Integer pid) {
        return userDao.selectposi(pid);
    }

    @Override
    public int employeeclocking(Integer id) {
        //打卡之前线查询是否有打卡记录，有，则为下班卡，无则为上班卡
        Calendar calendar = Calendar.getInstance();
        //年月日  也可以具体到时分秒如calendar.set(2015, 10, 12,11,32,52);
        calendar.set(2018, calendar.get(Calendar.MONTH), calendar.get(Calendar.DATE), 9, 00);
        //获取早上的时间,将此时间化为毫秒值
        calendar.getTime().getTime();
        //获取当前时间
        Calendar calendar1 = Calendar.getInstance();
        //年月日  也可以具体到时分秒如calendar.set(2015, 10, 12,11,32,52);
        calendar1.set(2018, calendar1.get(Calendar.MONTH), calendar1.get(Calendar.DATE), 18, 00);
        //获取早上的时间,将此时间化为毫秒值
        calendar.getTime().getTime();
        calendar1.getTime().getTime();
        //如果时间小于9点，则是上班正常打卡,状态为1

        if(new Date().getTime()<calendar.getTime().getTime()){
          userDao.employeeclocking(id,1,new Date());
          return 1;
        }else if(new Date().getTime()>calendar1.getTime().getTime()) {
            //下班正常打卡,状态为2
            userDao.employeeclockingnight(id, 2, new Date());
            return 2;
        }
        else
            //迟到或为打卡
            userDao.employeeclockinglate(id,3,new Date());
        return 3;
    }

    @Override
    public Cadets SelectCadets(Integer uid) {
        return userDao.SelectCadets(uid);
    }


}
