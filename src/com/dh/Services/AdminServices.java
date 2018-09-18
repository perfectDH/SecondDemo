package com.dh.Services;

import com.dh.JavaBean.*;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public interface AdminServices {
    Admin login(String name, String password);

    void adminRelease(Recruit recruit);

    List<remuse> findAllremuse();

    remuse findremusebyid(Integer id);

    User findUserbyname(String username);


    void deleteremuse(Integer id);

    void updateRemuseStruts(Integer id);

    void updateUser(Integer uid);

    List<User> findUserbyStruts();

    void addDept(String deptname, Date date);

    List<Dept> selectDept();

    void addPosi(Integer deptid, String posiname);

    User findUserByid(Integer uid);
}
