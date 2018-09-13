package com.dh.View;

import com.dh.JavaBean.Recruit;
import com.dh.JavaBean.User;
import com.dh.JavaBean.remuse;
import com.dh.JavaBean.remuseMessage;
import com.dh.Services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserServices userServices;

    @RequestMapping("/userLogin.action")
    public String login() {
        return "UserLogin";
    }

    //用户登录
    @RequestMapping("/Userlogin.action")
    public String userLogin(String username, String password, HttpSession session) {
        User user = userServices.userLogin(username, password);
        session.setAttribute("user", user);
        return "forward:findMessage.action";
    }

    //查询最新的招聘信息
    @RequestMapping("/findMessage.action")
    public String findMessage(HttpSession session) {
        //此处返回的应该是一个分页对象
        List<Recruit> recruitList = userServices.findMessage();
        session.setAttribute("recruitList", recruitList);
        return "Us" +
                "erMenu";
    }

    //用户申请面试,用户点击的那个招聘信息的id,根据招聘信息的id，查询招聘信息，
    // 和简历信息，然后保存到简历表和简历信息表，删除记录为简历信息表

    // 传递到管理员的最近面试申请
    @RequestMapping("/interview.action")
    public String interview(Integer rid, HttpSession session, Integer uid) {

        User u = userServices.findUserbyid(uid);

        //根据rid获取招聘信
        Recruit r = userServices.findRecruitByid(rid);
//        将用户信息和招聘信息存入到简历对象
        remuse rr = new remuse();
        rr.setPay(r.getPay());
        rr.setSkill(r.getUsermessage());
        rr.setUsername(u.getUsername());
        rr.setCreatedate(new Date());
        rr.setUpdate(new Date());
        rr.setPosition(r.getTitle());
        rr.setRstruts(0);
        //将简历信息插入表中
        userServices.saveremuse(rr);

        return "UserMenu";
    }

}
