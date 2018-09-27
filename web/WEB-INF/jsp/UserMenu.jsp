<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/10
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>首页</title>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .zhaopin {
            height: 30px;
            font-style: italic;
        }

        .zhaopin > input {
            height: 20px;
        }

        .num > input {
            border-color: white;
            background-color: blue;
            color: white;
        }


    </style>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.orderBars.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.pie.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.resize.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/uniform.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/elfinder.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/charts/chart.js"></script>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body>

<!-- Left side content -->
<div id="leftSide">
    <form action="" class="sidebarSearch">
        <input type="text" name="search" placeholder="搜索..." id="ac"/>
        <input type="submit" value=""/>
    </form>

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dash"><a href="#" title="" class=username"active"><span>首页</span></a></li>
        <li class="charts"><a href="requestremuse.action?username=${sessionScope.user.username}"><span>简历回馈</span></a>
    </ul>
</div>

<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <div class="topNav">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="images/userPic.png"
                                                           alt=""/></a><span>你好${sessionScope.user.username}</span>
            </div>
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
            <span class="goTo"><img src="images/icons/light/home.png" alt=""/>导航</span>
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

            <div class="middleNav">


                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="line" style="display:none;"></div>

    <!-- Page statistics and control buttons area -->

    <div class="line"></div>

    <!-- Main content wrapper -->
    <div class="wrapper">

        <!-- Note -->

        <!-- Widgets -->
        <div class="widgets">

            <!-- 2 columns widgets -->
            <div class="oneTwo">

                <!-- Search -->
                <div class="searchWidget">
                    <form action="">
                        <input type="text" name="search" placeholder="Enter search text..."/>
                        <input type="submit" name="find" value=""/>
                    </form>
                </div>

                <!-- Purchase info widget -->
            </div>
            <!-- Purchase info widget -->
            <div class="widget">
                <div class="title">
                    <img src="images/icons/dark/money.png" alt="" class="titleIcon"/>
                    <h6>最新的招聘信息</h6>

                </div>
                <c:forEach items="${sessionScope.recruitList}" var="list">
                    <div class="newOrder">
                        <div class="userRow">
                            <a href="#" title=""><img src="images/user.png" alt="" class="floatL"/></a>
                            <ul class="leftList">
                                <li><a href="#" title=""><strong>发布者:${list.adminname}</strong></a></li>
                                <li>发布时间：<fmt:formatDate value='${list.recruitdate}' pattern='yyyy-MM-dd HH:mm:ss'/></li>
                                <%--<li> 最新更新时间：<fmt:formatDate value='${list.update}' pattern='yyyy-MM-dd HH:mm:ss'/></li>--%>
                                <li>标题内容：${list.title}</li>
                                <li>公司地址：${list.address}</li>
                                <li>招聘简介：${list.usermessage}</li>

                            </ul>

                            <div class="clear"></div>
                        </div>

                        <div class="cLine"></div>


                        <div class="cLine"></div>
                        <div class="totalAmount">
                            <div class="num" style="margin: 0px 8px 0 0;"><a
                                    href="/interview.action?rid=${list.rid}&uid=${sessionScope.user.uid}"
                                    class="blueNum">申请面试</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </c:forEach>

            </div>
            <div class="clear"></div>

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