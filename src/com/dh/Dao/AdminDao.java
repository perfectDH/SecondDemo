package com.dh.Dao;

import com.dh.JavaBean.*;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface AdminDao {

    Admin login(String name, String password);

    //管理员发布招聘信息
    void adminRelease(Recruit recruit);

    List<remuse> findAllremuse();

    remuse findremusebyid(Integer id);

    User findUserbyname(String username);


    void deleteremuse(Integer id);

    Integer selectCount();

    void updateRemuseStruts(Integer id);


    void updateUser(Integer uid);

    List<User> findUserbyStruts();

    void addDept(String deptname, Date date);

    List<Dept> selectDep();

    void addPosi(Integer deptid, String posiname);

    User findUserByid(Integer uid);

    List<posi> findPosiBydeptid(Integer deptid);

    void updateEmployeeBydept(Integer uid, Integer deptid, Integer posiid,Integer struts);

    List<User> findUser(Integer dept, Integer posi);

    String finddeptname(Integer dept);

    String findposiname(Integer dept, Integer posi);

    Integer findtotal(Integer uid);

    List<User> findUserbydept(Integer dept);
}
