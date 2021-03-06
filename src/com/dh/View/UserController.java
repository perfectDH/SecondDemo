package com.dh.View;

import com.dh.JavaBean.*;
import com.dh.Services.AdminServices;
import com.dh.Services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserServices userServices;

    @Autowired
    private AdminServices adminServices;

    @RequestMapping("/userLogin.action")
    public String login() {
        return "UserLogin";
    }

    //用户登录
    @RequestMapping("/Userlogin.action")
    public String userLogin(String username, String password, HttpSession session) {
        //根据用户信息查询用户的状态，不是员工则转发到find message，是员工则转发的员工界面
        User user = userServices.userLogin(username, password);
        session.setAttribute("user", user);
        if (user.getUstruts() == 0) {
            return "forward:findMessage.action";
        }
        //转发到员工的主界面

        return "forward:findemployee.action";


    }

    //跳转到员工界面
    @RequestMapping("/findemployee.action")
    public String findemployee(HttpSession session) {
        //根据用户的部门id和职位id查询
        User user = (User) session.getAttribute("user");
        String deptname = userServices.selectDept(user.getDeptid());
        String posi = userServices.selectposi(user.getPid());
        List<String> list = new ArrayList<String>();
        list.add(deptname);
        list.add(posi);
        session.setAttribute("dept", list);
        return "employeemenu";
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

    //用户的简历回馈信息
    @RequestMapping("/requestremuse.action")
    public String requestremuse(String username, HttpSession session) {
        //根据当前用户的姓名查询所有有关他的面试信息回馈
        List<remuse> list = userServices.findRemusebuName(username);
        session.setAttribute("listremuse", list);

        return "userRequest";
    }


    //员工打卡
    @RequestMapping("/employeeclocking.action")
    public String clocking(Integer id, HttpSession session) {
        int struts = userServices.employeeclocking(id);
        session.setAttribute("struts", struts);
        return "employeemenu";
    }

    @RequestMapping("/showEmplo.action")
    public String showEmplo(HttpSession session) {
        List<Dept> deptlist = adminServices.selectDept();
        session.setAttribute("deptshow", deptlist);
        return "EmployeeShow";
    }

    //查询培训通知
    @RequestMapping("/showEmployeecadets.action")
    public String showEmployeecadets(HttpSession session) {
        User u = (User) session.getAttribute("user");
        //根据uid获取培训通知
        List<Cadets> cadets = userServices.SelectCadets(u.getUid());
        session.setAttribute("cadets", cadets);
        return "EmployeeCadets";
    }


    //查询奖罚记录
    @RequestMapping("/showaward.action")
    public String showaward(HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<bonus> blist = userServices.selectBonus(user.getUid());
        session.setAttribute("blist",blist);
        return "EmployeeBonus";
    }
    //产看薪资
    @RequestMapping("/showMonerytotal.action")
    public String showMonerytotal(HttpSession session){
        User user = (User) session.getAttribute("user");
        List<EmployeePay> eplist=userServices.selectPay(user.getUid());
        session.setAttribute("eplist",eplist);
        return "EmployeePay";
    }
}
