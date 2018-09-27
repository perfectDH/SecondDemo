package com.dh.Services;

import com.dh.JavaBean.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserServices {
    User userLogin(String username, String password);

    List<Recruit> findMessage();

    void saveremuse(remuse rr);

    Recruit findRecruitByid(Integer rid);

    User findUserbyid(Integer uid);


    List<remuse> findRemusebuName(String username);

    String selectDept(Integer deptid);

    String selectposi(Integer pid);

    int employeeclocking(Integer id);

    List<Cadets> SelectCadets(Integer uid);

    List<bonus> selectBonus(Integer uid);

    List<EmployeePay> selectPay(Integer uid);
}
