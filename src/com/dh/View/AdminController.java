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


    //查找新增员工
    @ResponseBody
    @RequestMapping("/selectemplo.action")
    public String selectEmployee() {
//查询员工状态为0的用户
        List<User> ustruts = adminServices.findUserbyStruts();

        //创建一个新集合
        List<User> newlist = new ArrayList<User>();

        for (int i = 0; i < ustruts.size(); i++) {
            if (ustruts.get(i).getUstruts() == 0) {
                newlist.add(ustruts.get(i));
            }
        }
        String ulist = JSONArray.toJSONString(newlist);
        return ulist;
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

        //根据id修改简历状态，已查看则不显示
        adminServices.updateRemuseStruts(id);

        //同意的话用户状态改变
        adminServices.updateUser(user.getUid());
        return "";
    }


    //添加部门与职位
    @RequestMapping("/addDept.action")
    public String forAdmindept(HttpSession session) {
        List<Dept> deptlist = adminServices.selectDept();
        session.setAttribute("deptlist", deptlist);
        return "AdminDept";
    }

    //添加部门
    @RequestMapping("/addDeptmessage.action")
    public String addDeptmessage(String deptname) {
        adminServices.addDept(deptname, new Date());
        return "AdminDept";
    }

    //添加职位
    @RequestMapping("/addPosi.action")
    public String addPosi(Integer deptid, String posiname) {
        adminServices.addPosi(deptid, posiname);
        return "AdminDept";
    }


//    //省市联动查询部门
//    @ResponseBody
//    @RequestMapping("/selectDept.action")
//    public String selectDept(){
//
//        String dtlist = JSONArray.toJSONString(deptlist);
//        return dtlist;
//    }

    //修改新增员工的信息,将部门信息传递过去
    @RequestMapping("/updateUser.action")
    public String updateUser(Integer uid,HttpSession session){
        //根据id查询用户信息，保存到session中
        User user=adminServices.findUserByid(uid);
        List<Dept> deptlist = adminServices.selectDept();
        session.setAttribute("updept",deptlist);
        session.setAttribute("upUser",user);
        return "AdminEmployee";
    }



}
