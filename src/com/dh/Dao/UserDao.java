package com.dh.Dao;

import com.dh.JavaBean.*;
import org.springframework.stereotype.Repository;

import java.util.Date;
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

    String selectDept(Integer deptid);

    String selectposi(Integer pid);


    void employeeclocking(Integer id, int i, Date date);

    void employeeclockingnight(Integer id, int i, Date date);

    void employeeclockinglate(Integer id, int i, Date date);

    List<Cadets> SelectCadets(Integer uid);

    int selectClockinglate(int i,Integer id);

    int selectClocking(int i,Integer id);

    int selectClockingend(int i, Integer id);

    List<bonus> selectBonus(Integer uid);

    List<EmployeePay> selectPay(Integer uid);
}
