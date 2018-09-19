<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/18
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>我的资料</title>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="js/jquery.min.js"></script>

    <script type="text/javascript" src="js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript" src="js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.orderBars.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.pie.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="js/plugins/forms/uniform.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript" src="js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript" src="js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript" src="js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript" src="js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript" src="js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript" src="js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="js/plugins/elfinder.min.js"></script>

    <script type="text/javascript" src="js/custom.js"></script>

    <script type="text/javascript" src="js/charts/chart.js"></script>

    <script type="text/javascript" src="js/jquery-1.8.2.min.js"> </script>
    <script type="text/javascript">

        $(function () {
            $("#dept").change(function () {
                if($(this).val()==0){
                    //delete index>0 option
                    $("#posi option:gt(0)").remove();
                    return;
                }
                //当部门改变使用ajax来查询部门id的职位
                $.ajax({
                    url:"findPosiBydeptid.action",
                    type:"post",
                    data:{
                        dept:$(this).val()
                    },
                    dataType:"json",
                    success:function (data) {
                        $("#posi option:gt(0)").remove();
                        $.each(data,function (idx,item) {
                            var opt="<option value='"+item.posiid+"'>"+item.posiname+"</option>";
                                $("#posi").append(opt);
                        });
                    }

                });
            });
        });
    </script>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body>

<!-- Left side content -->
<div id="leftSide">
    <div class="logo"><a href="#"><img src="images/logo.png" alt=""/></a></div>

    <div class="sidebarSep mt0"></div>

    <!-- Search widget -->
    <form action="" class="sidebarSearch">
        <input type="text" name="search" placeholder="搜索..." id="ac"/>
        <input type="submit" value=""/>
    </form>

    <div class="sidebarSep"></div>

    <!-- Next update progress widget -->
    <div class="nextUpdate">
        <ul>
            <li>下次更新时间在:</li>
            <li>23 小时 14 分</li>
        </ul>
        <div class="pWrapper">
            <div class="progressG" title="78%"></div>
        </div>
    </div>

    <div class="sidebarSep"></div>

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dash"><a href="index.html" title="" class="active"><span>首页</span></a></li>
        <li class="charts"><a href="我的资料.html" title="" class="exp"><span>部门管理</span></a>
            <ul class="sub">
                <li><a href="addDept.action" title="">部门与职位添加</a></li>
                <li><a href="deleteDept.action" title="">部门与职位删除</a></li>
                <li><a href="selectDept.action" title="">部门与职位查看</a></li>
            </ul>
        </li>
        <li class="forms"><a href="showEmployee.action" title="" class="exp"><span>员工管理</span><strong></strong></a>

        </li>
        <li class="ui"><a href="showaward.action" title="" class="exp"><span>奖惩管理</span></a>

        </li>
        <li class="tables"><a href="showcadets.action" title="" class="exp"><span>培训管理</span><strong></strong></a>

        </li>
        <li class="widgets"><a href="showpay.action" title="" class="exp"><span>薪资管理</span><strong></strong></a></li>
    </ul>
</div>


<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <div class="topNav">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="images/userPic.png" alt=""/></a><span>你好。主人</span></div>
            <div class="userNav">
                <ul>
                    <li><a href="#" title=""><img src="images/icons/topnav/profile.png" alt=""/><span>个人中心</span></a>
                    </li>
                    <li><a href="#" title=""><img src="images/icons/topnav/tasks.png" alt=""/><span>任务</span></a></li>
                    <li class="dd"><a title=""><img src="images/icons/topnav/messages.png" alt=""/><span>消息</span><span
                            class="numberTop">8</span></a>
                        <ul class="userDropdown">
                            <li><a href="#" title="" class="sAdd">new message</a></li>
                            <li><a href="#" title="" class="sInbox">inbox</a></li>
                            <li><a href="#" title="" class="sOutbox">outbox</a></li>
                            <li><a href="#" title="" class="sTrash">trash</a></li>
                        </ul>
                    </li>
                    <li><a href="#" title=""><img src="images/icons/topnav/settings.png" alt=""/><span>设置</span></a>
                    </li>
                    <li><a href="#" title=""><img src="images/icons/topnav/logout.png" alt=""/><span>退出</span></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <!-- Responsive header -->
    <div class="resp">
        <div class="respHead">
            <a href="#" title=""><img src="images/loginLogo.png" alt=""/></a>
        </div>

        <div class="cLine"></div>
        <div class="smalldd">
            <span class="goTo"><img src="images/icons/light/home.png" alt=""/>Dashboard</span>
            <ul class="smallDropdown">
                <li><a href="#" title=""><img src="images/icons/light/home.png" alt=""/>Dashboard</a></li>
                <li><a href="#" title=""><img src="images/icons/light/stats.png" alt=""/>Statistics and charts</a></li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/pencil.png" alt=""/>Forms
                    stuff<strong>4</strong></a>
                    <ul>
                        <li><a href="#" title="">Form elements</a></li>
                        <li><a href="#" title="">Validation</a></li>
                        <li><a href="#" title="">WYSIWYG and file uploader</a></li>
                        <li class="last"><a href="#" title="">Wizards</a></li>
                    </ul>
                </li>
                <li><a href="#" title=""><img src="images/icons/light/users.png" alt=""/>Interface elements</a></li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/frames.png"
                                                          alt=""/>Tables<strong>3</strong></a>
                    <ul>
                        <li><a href="#" title="">Static tables</a></li>
                        <li><a href="#" title="">Dynamic table</a></li>
                        <li class="last"><a href="#" title="">Sortable &amp; resizable tables</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/fullscreen.png" alt=""/>Widgets and
                    grid<strong>2</strong></a>
                    <ul>
                        <li><a href="#" title="">Widgets</a></li>
                        <li class="last"><a href="#" title="">Grid</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/alert.png" alt=""/>Error pages<strong>6</strong></a>
                    <ul class="sub">
                        <li><a href="#" title="">403 page</a></li>
                        <li><a href="#" title="">404 page</a></li>
                        <li><a href="#" title="">405 page</a></li>
                        <li><a href="#" title="">500 page</a></li>
                        <li><a href="#" title="">503 page</a></li>
                        <li class="last"><a href="#" title="">Website is offline</a></li>
                    </ul>
                </li>
                <li><a href="#" title=""><img src="images/icons/light/files.png" alt=""/>File manager</a></li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/create.png" alt=""/>Other
                    pages<strong>3</strong></a>
                    <ul>
                        <li><a href="#" title="">Typography</a></li>
                        <li><a href="#" title="">Calendar</a></li>
                        <li class="last"><a href="#" title="">Gallery</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="cLine"></div>
    </div>

    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>我的项目</h5><br>
                <h6>分享财富（T-4）</h6>
                <span>参加者：<b>华远网络</b> 金额：<b>￥1000.00</b> 日期：<b>2016-09-25 13:47:50</b> 状态：<b>匹配成功</b> 确认：<b>已确认</b></span>
            </div>
            <div class="middleNav">
                <ul>
                    <li class="mUser"><a title=""><span class="users"></span></a>
                        <ul class="mSub1">
                            <li><a href="#" title="">Add user</a></li>
                            <li><a href="#" title="">Statistics</a></li>
                            <li><a href="#" title="">Orders</a></li>
                        </ul>
                    </li>
                    <li class="mMessages"><a title=""><span class="messages"></span></a>
                        <ul class="mSub2">
                            <li><a href="#" title="">New tickets<span class="numberRight">8</span></a></li>
                            <li><a href="#" title="">Pending tickets<span class="numberRight">12</span></a></li>
                            <li><a href="#" title="">Closed tickets</a></li>
                        </ul>
                    </li>
                    <li class="mFiles"><a href="#" title="Or you can use a tooltip" class="tipN"><span
                            class="files"></span></a></li>
                    <li class="mOrders"><a title=""><span class="orders"></span><span class="numberMiddle">8</span></a>
                        <ul class="mSub4">
                            <li><a href="#" title="">Pending uploads</a></li>
                            <li><a href="#" title="">Statistics</a></li>
                            <li><a href="#" title="">Trash</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="line"></div>
    <!-- Main content wrapper -->
    <div class="wrapper">

        <!-- Note -->
        <div class="nNote nInformation hideit">
            <p>亲爱的<strong>华远网络 </strong>（Lv1，山东临沂市地区领导人）本月任务 <strong>1 </strong>次，已完成 <strong>1 </strong>次排单。</p>
        </div>


        <div class="widget rightTabs">
            <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon"><h6>员工资料</h6></div>
            <ul class="tabs">
                <li><a href="#tab1">基本信息</a></li>

            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content np" style="display: block;">
                    <form id="validate" class="form" method="post" action="updateEmployeeBydept.action?username=${sessionScope.upUser.username}">
                        <fieldset>
                            <div class="formRow">
                                <label>员工名字：<span class="req">*</span></label>
                                <div class="formRight" name="username">
                                    ${sessionScope.upUser.username}
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>手机号码：<span class="req">*</span></label>
                                <div class="formRight">
                                    ${sessionScope.upUser.uphone}
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>身份信息：<span class="req">*</span></label>
                                <div class="formRight"> ${sessionScope.upUser.ubodyid}
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>选择部门：<span class="req">*</span></label>
                                <div class="formRight">
                                    <select id="dept" name="${sessionScope.deptid}">
                                        <option value="0">
                                            请选择部门
                                        </option>
                                        <c:forEach items="${sessionScope.updept}" var="dept">
                                            <option value='${dept.deptid}'>${dept.deptname}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formRow">
                                <label>选择职位：<span class="req">*</span></label>
                                <div class="formRight">
                                    <select id="posi" name="posiid">
                                        <option value="0">请选择职位</option>

                                    </select>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="formSubmit"><input type="submit" value="修改" class="redB"></div>
                            <div class="clear"></div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>


    </div>

    <!-- Footer line -->
    <div id="footer">
        <div class="wrapper">Copyright © 2016 华远软件官方演示站点-本站点只提供演示版权所有 <a href="#" target="_blank" title="拆包大厅">拆包大厅</a>
            | <a href="#" target="_blank" title="平台动态">平台动态</a> | <a href="#" target="_blank">投诉及建议</a></div>
    </div>

</div>

<div class="clear"></div>

</body>
</html>