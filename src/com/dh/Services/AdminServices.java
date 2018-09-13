package com.dh.Services;

import com.dh.JavaBean.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AdminServices {
    Admin login(String name, String password);

    void adminRelease(Recruit recruit);

    List<remuse> findAllremuse();

    remuse findremusebyid(Integer id);

    User findUserbyname(String username);

    void addemployee(employee e);

    void deleteremuse(Integer id);

    void updateRemuseStruts(Integer id);
}
