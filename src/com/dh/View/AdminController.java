package com.dh.View;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.dh.JavaBean.*;
import com.dh.Services.AdminServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

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
            if (ustruts.get(i).getUstruts() == 1) {
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
        //查询所有职位
        List<posi> posiList=adminServices.SelectAllPosi();
        session.setAttribute("posiList", posiList);
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

    //修改部门
    @RequestMapping("/updateDept.action")
    public String updateDept(String updateDeptname,Integer Deptid){
        if(updateDeptname!=null&updateDeptname!=""){
            adminServices.updateDeptname(updateDeptname,Deptid);
        }
        return "forward:addDept.action";
    }
//修改职位
    @RequestMapping("/updatePosi.action")
    public String updatePosi(String updatePosiname,Integer Posiid){
        if(updatePosiname!=null&updatePosiname!=""){
            adminServices.updatePosi(updatePosiname,Posiid);
        }
        return "forward:addDept.action";
    }


    //删除部门和删除职位
    @RequestMapping("/deleteDept.action")
    public String deleteDept(Integer Deptid,HttpSession session){
        boolean flag=adminServices.deleteDept(Deptid);
        String error="删除失败，其下有员工";
        if(!flag){
            session.setAttribute("error",error);
        }
        return "forward:addDept.action";

    }

    @RequestMapping("/deletePosi.action")
    public String deletePosi(Integer Posiid,HttpSession session){
        boolean flag=adminServices.deletePosi(Posiid);
        String error="删除失败，其下有员工";
        if(!flag){
            session.setAttribute("wrong",error);
        }
        return "forward:addDept.action";
    }


    //修改新增员工的信息,将部门信息传递过去
    @RequestMapping("/updateUser.action")
    public String updateUser(Integer uid, HttpSession session) {
        //根据id查询用户信息，保存到session中
        User user = adminServices.findUserByid(uid);
//        user.setUstruts(2);
//        adminServices.updateStruts(user);
        List<Dept> deptlist = adminServices.selectDept();
        session.setAttribute("updept", deptlist);
        session.setAttribute("upUser", user);
        return "AdminAndEmployee";
    }

    //省市联动查询职位
    @ResponseBody
    @RequestMapping("/findPosiBydeptid.action")
    public String findPosiBydeptid(Integer dept) {
        List<posi> posiList = adminServices.findPosiBydeptid(dept);
        return  JSONObject.toJSONString(posiList);
    }

    @RequestMapping("/updateEmployeeBydept.action")
    public String updateEmployeeBydept(String username,Integer deptid,Integer posiid){
        //根据管理员的操作更改来操作用户
        adminServices.updateEmployeeBydept(username,deptid,posiid);
        return "Adminindex";
    }

    //员工的删改查
    @RequestMapping("/showEmployee.action")
    public String showEmployee(HttpSession session){
        List<Dept> deptlist = adminServices.selectDept();
        session.setAttribute("deptshow", deptlist);
        return "AdminSelectEmployee";
    }
    //根据ajax传递的部门id和职位id查询员工信息
    @ResponseBody
    @RequestMapping("/findEmployeeBydeptandposi.action")
    public String findEmployeeBydeptandposi(Integer dept,Integer posi){
        List<UserDetils> udlist=adminServices.findEmployeeBydeptandposi(dept,posi);
        return  JSONObject.toJSONString(udlist);
    }

    //根据部门id查询员工
    @ResponseBody
    @RequestMapping("/findEmplyBydeptid.action")
    public String findEmplyBydeptid(Integer dept){
        List<UserDetils> udlist=adminServices.findEmplyBydeptid(dept);
        return  JSONObject.toJSONString(udlist);
    }

    //修改新增员工的信息,将部门信息传递过去
    @RequestMapping("/updateUserSelect.action")
    public String updateUserSelect(Integer uid, HttpSession session, HttpServletRequest request, Integer deptid, Integer posiid) {
        //根据id查询用户信息，保存到session中
        User user = adminServices.findUserByid(uid);
        List<Dept> deptlist = adminServices.selectDept();
        List<UserDetils> udlist=adminServices.findEmployeeBydeptandposi(deptid,posiid);
        session.setAttribute("updept", deptlist);
        session.setAttribute("upUser", user);
        request.setAttribute("dplist",udlist);
        return "AdminUpdateEmplo";
    }

//培训管理
    @RequestMapping("/showcadets.action")
    public String showcadets(HttpServletRequest request){
        List<Dept> deptlist = adminServices.selectDept();
        request.setAttribute("deptshow", deptlist);
        return "AdminAdets";
    }


    //添加培训信息
    @RequestMapping("/sendcadetsMessage.action")
    public String sendcadetsMessage(Integer uid,HttpServletRequest request){
        request.setAttribute("Usercadets",uid);
        return "AdminAdeatsMessage";
    }

    //保存培训信息
    @RequestMapping("/saveCadets.action")
    public String saveCadets(Cadets cadets){
        //向培训表插入一些东西
        adminServices.saveCadets(cadets);
        return "Adminindex";
    }





    //薪资管理
    @RequestMapping("/showpay.action")
    public String showpay(HttpSession session){
        //查询员工的打卡记录，计算基本薪资
        List<EmployeePay> payMap=adminServices.selectClocking();
        session.setAttribute("payMap",payMap);
        //查询用户是否有奖惩记录

        return "AdminPay";
    }



}
