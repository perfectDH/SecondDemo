package com.dh.Dao;

import com.dh.JavaBean.Recruit;
import com.dh.JavaBean.User;
import com.dh.JavaBean.remuse;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    User userLogin(String username, String password);

    List<Recruit> findMessage();

    void saveremuse(remuse rr);

    Recruit findRecruitByid(Integer rid);

    User findUserbyid(Integer uid);

    Integer selectCount();

    List<remuse> findRemusebuName(String username);
}
