package com.dh.Services;

import com.dh.JavaBean.Recruit;
import com.dh.JavaBean.User;
import com.dh.JavaBean.remuse;
import com.dh.JavaBean.remuseMessage;
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
}
