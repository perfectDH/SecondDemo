package com.dh.Services.Iml;

import com.dh.Dao.UserDao;
import com.dh.JavaBean.Recruit;
import com.dh.JavaBean.User;
import com.dh.JavaBean.remuse;
import com.dh.JavaBean.remuseMessage;
import com.dh.Services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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


}
