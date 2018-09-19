<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/14
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>我的资料</title>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>

    <style type="text/css">
        .btn {
            margin-right: 1px;
            margin-bottom: 1px;
        }

        .zhaopin {
            font-style: italic;
            font-size: 1.1em;
        }


    </style>

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
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>


    <%--<script type="text/javascript">--%>
        <%--$(function () {--%>
            <%--//绑定部门的下拉框改变事件--%>
            <%--$("#sel").change(function () {--%>
                <%--$.ajax({--%>
                    <%--url: "selectDept.action",--%>
                    <%--type: "post",--%>
                    <%--dataType: "json",--%>
                    <%--success: function (data) {--%>
                        <%--$("#sel option:gt(0)").remove();--%>
                        <%--$.each(data, function (idx, item) {--%>
                            <%--var opt = "  <option value='" + item.deptid + "'>" + item.deptname + "</option>"--%>
                            <%--$("#sel").append(opt);--%>
                        <%--});--%>
                    <%--}--%>
                <%--});--%>

            <%--});--%>
        <%--});--%>

    <%--</script>--%>
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
    </ul></div>


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


    <!-- Main content wrapper -->
    <div class="wrapper">

        <div class="widgets">

            <!-- 2 columns widgets -->
            <div class="oneTwo">

                <!-- Purchase info widget -->
                <div class="widget">
                    <div class="title">
                        <img src="images/icons/dark/money.png" alt="" class="titleIcon"/>
                        <h6>添加部门</h6>

                    </div>
                    <div class="newOrder">
                        <div>
                            <form action="/addDeptmessage.action">
                                <div class="zhaopin">
                                    部门名称:<input type="text" name="deptname"/>
                                    <input type="submit" class="btn" value="添加">
                                </div>
                            </form>

                        </div>


                    </div>
                </div>
                <!-- Purchase info widget -->


            </div>
            <div class="oneTwo">
                <!-- New users widget -->
                <div class="widget">
                    <div class="title"><img src="images/icons/dark/add.png" alt="" class="titleIcon" id="add"/><h6>
                        添加职位</h6>
                    </div>
                    <div class="wUserInfo" id="addemplo">
                        <form action="addPosi.action">
                        选择部门:<select id="sel" name="deptid">
                            <option value="0">请选择部门</option>
                            <c:forEach items="${sessionScope.deptlist}" var="dept">
                                <option value='${dept.deptid}' >${dept.deptname}</option>
                            </c:forEach>
                        </select>
                        <input type="text" name="posiname" class="btn">
                        <input type="submit" value="添加"/>
                        </form>
                    </div>

                </div>


            </div>

            <div class="clear"></div>
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