<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/7
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>我的资料</title>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .remusebtn {
            margin-right: 1px;
            margin-bottom: 1px;
        }
        #btn{
            margin-right: 1px;
            margin-bottom: 1px;
            border-radius: 1px;
            border: white solid 1px;
            background-color: blue;
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



    <script type="text/javascript" src="js/jquery-1.8.2.min.js"> </script>




    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/elfinder.min.js"></script>--%>

    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>--%>


    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/charts/chart.js"></script>--%>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->
    <script type="text/javascript">
        $(function (){
            $("#imgbtn").click(function (){
                //当图片按钮被点击时，使用ajax查询最新的简历申请.
                $.ajax({
                        url: "findremuse.action",
                        type: "post",
                        dataType: "json",
                        success: function (data) {
                            $("#remuseadd").empty();
                            $.each(data, function (idx, item) {
                                var div = $("<div class='newUpdate'>" +
                                    "<div class='uDone'> <a href='#' title=''><strong>面试消息</strong></a></div>" +
                                    "<div> <span> 面试者:" + item.username + "</span></div>" +
                                    "<div> <span>应聘岗位:" + item.position + "</span></div>" +
                                    "<div> <span>期望薪资:" + item.pay + "</span></div>" +
                                    "<div class='remusebtn'><input type='button' value='同意'  name='1' onclick='agree(" + item.reid + ")'><input type='button' value='拒绝' name='0'  onclick='noargee(" + item.reid + ")'></div>" +
                                    " <div class='clear'></div>" +
                                    "</div>");
                                $("#remuseadd").append(div);
                            });
                        }
                    }
                );
            });
            //新增员工的ajax请求
            $("#add").click(function () {
                $.ajax({
                    url: "selectemplo.action",
                    type: "post",
                    dataType: "json",
                    success: function (data) { //
                         $("#addemplo").empty();
                        $.each(data, function (idx, item) {
                            var div = $("<div class='wUserInfo'>" +
                                "<a href='#' title='' class='wUserPic'><img src='images/user.png' alt=''/></a>" +
                                "<ul class='leftList'>" +
                                " <li><a href='#' title=''><strong>" + item.username + "</strong></a></li>" +
                                "<li><a href='#' title=''>" + item.ubodyid + "</a></li>" +
                                "<li><a href='#' title=''>" + item.uphone + "</a></li>" +
                                "</ul>" +
                                    "<div> <input type='submit' value='管理' id='btn' onclick='upEmployee("+item.uid+")'/></div>"+
                                " <div class='clear'></div>" +
                                " </div>");
                            $("#addemplo").append(div);
                        });
                    }
                });
            });
            $("#add").trigger("click");
            $("#imgbtn").trigger("click");
        });


        function agree(reid) {
            $.ajax({
                url: "addemplyee.action",
                type: "post",
                dataType: "text",
                data: {
                    id: reid
                },
                success: function () {
                    $("#imgbtn").trigger("click");
                }
            });
        }
        function noargee(reid) {
        }

        function upEmployee(uid) {
            window.location.href = "http://localhost:8080/updateUser.action?uid="+uid +"";
        }
    </script>
</head>


<body>

<!-- Left side content -->
 <div id="leftSide">



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

    <!-- Top fixed navigation -->
    <div class="topNav">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="images/userPic.png"
                                                           alt=""/></a><span>你好${sessionScope.admin.admin}</span></div>
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

    <div class="line" style="display:none;"></div>

    <!-- Page statistics and control buttons area -->


    <div class="line"></div>

    <!-- Main content wrapper -->
    <div class="wrapper">

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
                <div class="widget">
                    <div class="title">
                        <img src="images/icons/dark/money.png" alt="" class="titleIcon"/>
                        <h6>发布招聘信息</h6>

                    </div>
                    <div class="newOrder">
                        <div>
                            <form action="/adminMessage.action">
                                <div class="zhaopin">
                                    招聘标题:<input type="text" name="title"/>
                                </div>
                                <div class="zhaopin">
                                    招聘公司:<input type="text" name="company"/>
                                </div>
                                <div class="zhaopin">
                                    招聘发布者:<input type="text" name="adminname"/>
                                </div>
                                <div class="zhaopin">
                                    薪资标准:<input type="text" name="pay"/>
                                </div>
                                <div class="zhaopin">
                                    公司地址:<input type="text" name="address"/>
                                </div>
                                <div class="zhaopin">
                                    任职需求：<textarea name="usermessage">
                        </textarea>
                                </div>
                                <div class="num" style="margin: 0px 8px 0 0;">
                                    <input type="submit" class="btn" value="发布">
                                </div>
                            </form>

                        </div>


                    </div>
                </div>

            </div>
            <div class="oneTwo">
                <!-- New users widget -->
                <div class="widget">
                    <div class="title"><img src="images/icons/dark/add.png" alt="" class="titleIcon" id="add"/><h6>
                        新增员工</h6>
                    </div>
                    <div class="wUserInfo" id="addemplo">

                    </div>

                </div>

                <!-- Latest update widget -->
                <div class="widget">
                    <div class="title"><img src="images/icons/dark/refresh4.png" alt="" class="titleIcon" id="imgbtn"/>
                        <h6>面试申请</h6>
                    </div>

                    <div class="updates" id="remuseadd">



                    </div>
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