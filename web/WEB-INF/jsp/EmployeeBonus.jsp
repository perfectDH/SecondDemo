<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/27
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>经理奖钱包记录</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />

    <%--   <script type="text/javascript" src="js/jquery.min.js"></script>

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
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body>

<!-- Left side content -->
<div id="leftSide">
    <div class="logo"><a href="#"><img src="images/logo.png" alt="" /></a></div>

    <div class="sidebarSep mt0"></div>

    <!-- Search widget -->
    <form action="" class="sidebarSearch">
        <input type="text" name="search" placeholder="搜索..." id="ac" />
        <input type="submit" value="" />
    </form>

    <div class="sidebarSep"></div>

    <!-- Next update progress widget -->
    <div class="nextUpdate">
        <ul>
            <li>下次更新时间在:</li>
            <li>23 小时 14 分</li>
        </ul>
        <div class="pWrapper"><div class="progressG" title="78%"></div></div>
    </div>

    <div class="sidebarSep"></div>

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dash"><a href="findemployee.action" title="" class="active"><span>首页</span></a></li>
        <li class="charts"><a href="showEmplo.action" title="" class="exp"><span>员工查看</span></a>
        </li>
        <li class="forms"><a href="showaward.action" title="" class="exp"><span>奖罚查看</span><strong></strong></a>
        </li>
        <li class="ui"><a href="showMonerytotal.action" title="" class="exp"><span>我的钱包</span></a>
        </li>
        <li class="widgets"><a href="showEmployeecadets.action" title="" class="exp"><span>培训通知</span><strong></strong></a>
        </li>
    </ul>
</div>


<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <div class="topNav">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="images/userPic.png" alt="" /></a><span>你好。主人</span></div>
            <div class="userNav">
                <ul>
                    <li><a href="#" title=""><img src="images/icons/topnav/profile.png" alt="" /><span>个人中心</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/topnav/tasks.png" alt="" /><span>任务</span></a></li>
                    <li class="dd"><a title=""><img src="images/icons/topnav/messages.png" alt="" /><span>消息</span><span class="numberTop">8</span></a>
                        <ul class="userDropdown">
                            <li><a href="#" title="" class="sAdd">new message</a></li>
                            <li><a href="#" title="" class="sInbox">inbox</a></li>
                            <li><a href="#" title="" class="sOutbox">outbox</a></li>
                            <li><a href="#" title="" class="sTrash">trash</a></li>
                        </ul>
                    </li>
                    <li><a href="#" title=""><img src="images/icons/topnav/settings.png" alt="" /><span>设置</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/topnav/logout.png" alt="" /><span>退出</span></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="wrapper">

        <!-- Note -->
        <div class="nNote nInformation hideit">
            <p>亲爱的<strong>华远网络 </strong>（Lv1，山东临沂市地区领导人）本月任务 <strong>1 </strong>次，已完成 <strong>1 </strong>次排单。</p>
        </div>


        <!-- Widgets -->
        <div class="widgets">
            <div class="widget">
                <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon"><h6>经理奖钱包记录</h6></div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable">
                    <thead>
                    <tr>

                        <td width="80">奖金</td>
                        <td width="80">罚金</td>
                        <td width="80">执行时间</td>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${sessionScope.blist} " var="blist" >
                        <tr>
                            <td align="center">${blist.bup}</td>
                            <td align="center">${blist.bdown}</td>
                            <td align="center"><fmt:formatDate value="${blist.ddate}" pattern="yyyy-MM-dd"/></td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <!-- Footer line -->
    <div id="footer">
        <div class="wrapper">Copyright © 2016 华远软件官方演示站点-本站点只提供演示版权所有  <a href="#" target="_blank" title="拆包大厅">拆包大厅</a> | <a href="#" target="_blank" title="平台动态">平台动态</a> | <a href="#" target="_blank">投诉及建议</a></div>
    </div>

</div>

<div class="clear"></div>

</body>
</html>