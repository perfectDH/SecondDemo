package com.dh.Services;

import com.dh.JavaBean.*;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

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

    List<posi> findPosiBydeptid(Integer deptid);

    void updateEmployeeBydept(String username, Integer deptid, Integer posiid);

    List<UserDetils> findEmployeeBydeptandposi(Integer dept, Integer posi);

    List<UserDetils> findEmplyBydeptid(Integer dept);

    void updateStruts(User user);

    void saveCadets(Cadets cadets);

    List<EmployeePay> selectClocking();

    List<posi> SelectAllPosi();

    void updateDeptname(String updateDeptname, Integer deptid);

    void updatePosi(String updatePosiname, Integer posiid);

    boolean deleteDept(Integer deptid);

    boolean deletePosi(Integer posiid);
}
