package com.dh.View;

import com.alibaba.fastjson.JSONArray;
import com.dh.JavaBean.*;
import com.dh.Services.AdminServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminServices adminServices;

    @RequestMapping("/login.action")
    public String loginIndex() {
        return "AdminLogin";
    }

    //管理员登录
    @RequestMapping("/loginServlet.action")
    public String login(String name, String password, HttpSession session) {
        Admin admin = adminServices.login(name, password);

        session.setAttribute("admin", admin);
        return "Adminindex";
    }

    //管理员发布招聘信息
    @RequestMapping("/adminMessage.action")
    public String adminRelease(Recruit recruit) {
        adminServices.adminRelease(recruit);
        return "Adminindex";
    }

    //ajax刷新面试申请信息
    @ResponseBody
    @RequestMapping("/findremuse.action")
    public String findremuse() {
        List<remuse> listremuse = adminServices.findAllremuse();
        //获取简历表的状态，为0则显示，为1则不显示
        //建立一个新集合
        List<remuse> listr = new ArrayList<remuse>();
        for (int i = 0; i < listremuse.size(); i++) {
            if (listremuse.get(i).getRstruts() == 0) {
                listr.add(listremuse.get(i));
            }
        }
        String list = JSONArray.toJSONString(listr);
        return list;
    }

    //批准或拒绝面试申请
    @ResponseBody
    @RequestMapping("/addemplyee.action")
    public String addemplyee(Integer id) {
        //根据那么值判断时批准还是拒绝，批准受删除当前的简历信息，将用户信息查询放入员工表

        //根据id查简历信息
        remuse r = adminServices.findremusebyid(id);
        //根据名称查用户
        User user = adminServices.findUserbyname(r.getUsername());
        //将用户信息和简历信息存入员工表
//        employee e = new employee();
//        e.setDid(null);
//        e.setPid(null);
//        e.setEid(1);
//        e.setEname(user.getUsername());
//        e.setPay(r.getPay());
//        e.setDate(new Date());
//        e.setEstruts(0);
//        adminServices.addemployee(e);
        //根据id修改简历状态，已查看则不显示
        adminServices.updateRemuseStruts(id);
        return "";
    }

    //查找新增员工
    @ResponseBody
    @RequestMapping("/selectemplo.action")
    public String selectEmployee(){
        List<employee> emplolist=adminServices.selectEmployee();
        String alist = JSONArray.toJSONString(emplolist);
        return alist;
    }


}
