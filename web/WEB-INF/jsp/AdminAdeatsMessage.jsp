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

    <%--<script type="text/javascript" src="js/jquery.min.js"></script>

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

    <script type="text/javascript" src="js/charts/chart.js"></script>--%>
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"> </script>
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
        <li class="charts"><a href="addDept.action" title="" class="exp"><span>部门管理</span></a>

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


    <div class="wrapper">

        <!-- Note -->


        <div class="widget rightTabs">
            <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon"><h6>培训相关</h6></div>
            <ul class="tabs">
                <li><a href="#tab1"></a></li>

            </ul>
            <div class="tab_container">

                <div id="tab1" class="tab_content np" style="display: block;">
                    <form id="validate" class="form" method="post"
                          action="saveCadets.action?uid=${requestScope.Usercadets}">
                        <div class="formRow">
                            <label>培训标题：<span class="req">*</span></label>
                            <div class="formRight"><input type="text" class="validate[required]" name="cadetstitle"
                                                          id="req2"></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>开始时间：<span class="req">*</span></label>
                            <div class="formRight">

                                <input type="date" class="validate[required]" name="begindate" value="<fmt:formatDate value="${begindate}" pattern="yyyy-MM-dd"/>"
                                                          id="password3"></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>结束时间：<span class="req">*</span></label>
                            <div class="formRight">

                                <input type="date" class="validate[required,minSize[6]]"
                                                          name="enddate" id="minValid2"
                                value="<fmt:formatDate value="${enddate}" pattern="yyyy-MM-dd"/>"></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>培训内容：<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" class="validate[required,minSize[6]]"
                                       name="cadetsmessage" id="minValid3"></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formSubmit"><input type="submit" value="新建" class="redB"></div>
                        <div class="clear"></div>
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

