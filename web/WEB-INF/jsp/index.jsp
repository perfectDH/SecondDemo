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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>首页</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />

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
        <li class="dash"><a href="index.html" title="" class="active"><span>首页</span></a></li>
        <li class="charts"><a href="我的资料.html" title="" class="exp"><span>账户管理</span></a>
            <ul class="sub">
                <li><a href="#" title="">激活码管理</a></li>
                <li><a href="门票管理.html" title="">门票券管理</a></li>
                <li><a href="我的团队.html" title="">伞下的成员</a></li>
                <li><a href="#" title="">注册下线会员</a></li>
                <li class="last"><a href="#" title="">注销登录账号</a></li>
            </ul>
        </li>
        <li class="forms"><a href="#" title="" class="exp"><span>交易记录</span><strong></strong></a>
            <ul class="sub">
                <li><a href="提供帮助记录.html" title="">提供帮助记录</a></li>
                <li><a href="接受帮助记录.html" title="">接受帮助记录</a></li>
                <li><a href="团队信息记录.html" title="">团队信息记录</a></li>
                <li><a href="提供帮助所得利息.html" title="">提供帮助所得利息</a></li>
                <li class="last"><a href="经理奖钱包记录.html" title="">经理奖钱包记录</a></li>
            </ul>
        </li>
        <li class="ui"><a href="#" title="" class="exp"><span>我的钱包</span></a>
            <ul class="sub">
                <li><a href="我的钱包.html" title="">资产：￥10000</a></li>
                <li><a href="我的钱包.html" title="">经理：￥1700</a></li>
                <li><a href="我的钱包.html" title="">推荐：￥150</a></li>
                <li class="last"><a href="我的钱包.html" title="">积分：0分</a></li>
            </ul>
        </li>
        <li class="tables"><a href="我的资料.html" title="" class="exp"><span>个人档案</span><strong></strong></a>
            <ul class="sub">
                <li><a href="我的资料.html" title="">ID号：1</a></li>
                <li><a href="我的资料.html" title="">级别：Lv1</a></li>
                <li><a href="我的资料.html" title="">姓名：华远网络</a></li>
                <li class="last"><a href="我的资料.html" title="">手机：18200000000</a></li>
            </ul>
        </li>
        <li class="widgets"><a href="#" title="" class="exp"><span>拆包大厅</span><strong></strong></a></li>
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

    <!-- Responsive header -->
    <div class="resp">
        <div class="respHead">
            <a href="#" title=""><img src="images/loginLogo.png" alt="" /></a>
        </div>

        <div class="cLine"></div>
        <div class="smalldd">
            <span class="goTo"><img src="images/icons/light/home.png" alt="" />导航</span>
            <ul class="smallDropdown">
                <li><a href="#" title=""><img src="images/icons/light/home.png" alt="" />Dashboard</a></li>
                <li><a href="#" title=""><img src="images/icons/light/stats.png" alt="" />Statistics and charts</a></li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/pencil.png" alt="" />Forms stuff<strong>4</strong></a>
                    <ul>
                        <li><a href="#" title="">Form elements</a></li>
                        <li><a href="#" title="">Validation</a></li>
                        <li><a href="#" title="">WYSIWYG and file uploader</a></li>
                        <li class="last"><a href="#" title="">Wizards</a></li>
                    </ul>
                </li>
                <li><a href="#" title=""><img src="images/icons/light/users.png" alt="" />Interface elements</a></li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/frames.png" alt="" />Tables<strong>3</strong></a>
                    <ul>
                        <li><a href="#" title="">Static tables</a></li>
                        <li><a href="#" title="">Dynamic table</a></li>
                        <li class="last"><a href="#" title="">Sortable &amp; resizable tables</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/fullscreen.png" alt="" />Widgets and grid<strong>2</strong></a>
                    <ul>
                        <li><a href="#" title="">Widgets</a></li>
                        <li class="last"><a href="#" title="">Grid</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/alert.png" alt="" />Error pages<strong>6</strong></a>
                    <ul class="sub">
                        <li><a href="#" title="">403 page</a></li>
                        <li><a href="#" title="">404 page</a></li>
                        <li><a href="#" title="">405 page</a></li>
                        <li><a href="#" title="">500 page</a></li>
                        <li><a href="#" title="">503 page</a></li>
                        <li class="last"><a href="#" title="">Website is offline</a></li>
                    </ul>
                </li>
                <li><a href="#" title=""><img src="images/icons/light/files.png" alt="" />File manager</a></li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/create.png" alt="" />Other pages<strong>3</strong></a>
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
                    <li class="mFiles"><a href="#" title="Or you can use a tooltip" class="tipN"><span class="files"></span></a></li>
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

    <div class="line" style="display:none;"></div>

    <!-- Page statistics and control buttons area -->
    <div class="statsRow" style="display:none;">
        <div class="wrapper">
            <div class="controlB">
                <ul>
                    <li><a href="#" title=""><img src="images/icons/control/32/plus.png" alt="" /><span>Add new session</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/control/32/database.png" alt="" /><span>New DB entry</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/control/32/hire-me.png" alt="" /><span>Add new user</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/control/32/statistics.png" alt="" /><span>Check statistics</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/control/32/comment.png" alt="" /><span>Review comments</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/control/32/order-149.png" alt="" /><span>Check orders</span></a></li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
    </div>

    <div class="line"></div>

    <!-- Main content wrapper -->
    <div class="wrapper">

        <!-- Note -->
        <div class="nNote nInformation hideit">
            <p>亲爱的<strong>华远网络 </strong>（Lv1，山东临沂市地区领导人）本月任务 <strong>1 </strong>次，已完成 <strong>1 </strong>次排单。</p>
        </div>
        <!-- Widgets -->
        <div class="widgets">

            <!-- 2 columns widgets -->
            <div class="oneTwo">

                <!-- Search -->
                <div class="searchWidget">
                    <form action="">
                        <input type="text" name="search" placeholder="Enter search text..." />
                        <input type="submit" name="find" value="" />
                    </form>
                </div>

                <!-- Purchase info widget -->
                <div class="widget">
                    <div class="title">
                        <img src="images/icons/dark/money.png" alt="" class="titleIcon" />
                        <h6>高息期中的项目(打款确认后进入高息期)</h6>
                        <div class="topIcons">
                            <a href="#" class="tipS" title="Download statement"><img src="images/icons/downloadTop.png" alt="" /></a>
                            <a href="#" class="tipS" title="Print invoice"><img src="images/icons/printTop.png" alt="" /></a>
                            <a href="#" class="tipS" title="Edit"><img src="images/icons/editTop.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="newOrder">
                        <div class="userRow">
                            <a href="#" title=""><img src="images/user.png" alt="" class="floatL" /></a>
                            <ul class="leftList">
                                <li><a href="#" title=""><strong>提供帮助 T-2 ≌ 接受帮助 J-2</strong></a></li>
                                <li>Order status:</li>
                            </ul>
                            <ul class="rightList">
                                <li>提供金额：<a href="#" title=""><strong>￥1000</strong></a></li>
                                <li>收益总计：<a href="#" title=""><strong>￥44</strong></a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>

                        <div class="cLine"></div>

                        <div class="orderRow">
                            <ul class="leftList">
                                <li>排队收益:</li>
                                <li>是否转出:</li>
                                <li>提现:</li>
                            </ul>
                            <ul class="rightList">
                                <li><strong>0</strong>天收益+0</li>
                                <li><strong class="green">未转出</strong></li>
                                <li><strong class="orange">您已获得2.2%-X日息  </strong>(可以提现)</li>
                            </ul>
                            <div class="clear"></div>
                        </div>

                        <div class="cLine"></div>
                        <div class="totalAmount"><h6 class="floatL blue">交易成功</h6><div class="num" style="margin:0;"><a href="#" class="blueNum">提现</a></div><div class="clear"></div></div>
                    </div>
                </div>
                <!-- Purchase info widget -->
                <div class="widget">
                    <div class="title">
                        <img src="images/icons/dark/money.png" alt="" class="titleIcon" />
                        <h6>分享财富的项目</h6>
                        <div class="topIcons">
                            <a href="#" class="tipS" title="Download statement"><img src="images/icons/downloadTop.png" alt="" /></a>
                            <a href="#" class="tipS" title="Print invoice"><img src="images/icons/printTop.png" alt="" /></a>
                            <a href="#" class="tipS" title="Edit"><img src="images/icons/editTop.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="newOrder">
                        <div class="userRow">
                            <a href="#" title=""><img src="images/user.png" alt="" class="floatL" /></a>
                            <ul class="leftList">
                                <li><a href="#" title=""><strong>提供帮助 T-2</strong></a></li>
                                <li>配对时间：2016-09-25 13:51:02 交易时间：2016-09-25 13:51:40</li>
                            </ul>
                            <ul class="rightList">
                                <li>提供金额：<a href="#" title=""><strong>￥1000</strong></a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>

                        <div class="cLine"></div>

                        <div class="orderRow">
                            <ul class="leftList">
                                <li>付款方式:</li>
                                <li>接受会员:</li>
                            </ul>
                            <ul class="rightList pays">
                                <li><i class="icons bank" title="银行支付"></i><i class="icons alipay ml7" title="支付宝支付"></i><i class="icons wechat ml7" title="微信支付"></i><i class="icons line1 ml7" title="线下同城支付"></i></li>
                                <li><strong class="green">华远网络</strong></li>
                            </ul>
                            <div class="clear"></div>
                        </div>

                        <div class="cLine"></div>
                        <div class="totalAmount"><h6 class="floatL blue">已完成</h6>
                            <div class="num" style="margin: 0px 8px 0 0;"><a href="#" class="blueNum">留言</a></div>
                            <div class="num" style="margin: 0px 8px 0 0;"><a href="#" class="blueNum">详细资料</a></div>
                            <div class="num" style="margin: 0px 8px 0 0;"><a href="#" class="blueNum">给Ta评价</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>

            </div>
            <div class="oneTwo">
                <!-- New users widget -->
                <div class="widget">
                    <div class="title"><img src="images/icons/dark/add.png" alt="" class="titleIcon" /><h6>收获财富的项目</h6></div>
                    <div class="wUserInfo">
                        <a href="#" title="" class="wUserPic"><img src="images/user.png" alt="" /></a>
                        <ul class="leftList">
                            <li><a href="#" title=""><strong>张三</strong></a></li>
                            <li><a href="#" title="">eugene@163.com</a></li>
                        </ul>
                        <ul class="rightList">
                            <li><a href="#" class="green"><strong>$12,248.21</strong></a></li>
                            <li><a href="#" class="red">12 周期</a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="cLine"></div>

                    <div class="wUserInfo">
                        <a href="#" title="" class="wUserPic"><img src="images/user.png" alt="" /></a>
                        <ul class="leftList">
                            <li><a href="#" title=""><strong>李四</strong></a></li>
                            <li><a href="#" title="">valery@163.com</a></li>
                        </ul>
                        <ul class="rightList">
                            <li><a href="#" class="green"><strong>$4,048</strong></a></li>
                            <li><a href="#" class="red">96 周期</a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="cLine"></div>

                    <div class="wUserInfo">
                        <a href="#" title="" class="wUserPic"><img src="images/user.png" alt="" /></a>
                        <ul class="leftList">
                            <li><a href="#" title=""><strong>王五</strong></a></li>
                            <li><a href="#" title="">liam@168.com</a></li>
                        </ul>
                        <ul class="rightList">
                            <li><a href="#" class="green"><strong>$94,127.20</strong></a></li>
                            <li><a href="#" class="red">128 周期</a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="cLine"></div>

                    <div class="wUserInfo">
                        <a href="#" title="" class="wUserPic"><img src="images/user.png" alt="" /></a>
                        <ul class="leftList">
                            <li><a href="#" title=""><strong>周六</strong></a></li>
                            <li><a href="#" title="">steve@186.com</a></li>
                        </ul>
                        <ul class="rightList">
                            <li><a href="#" class="green"><strong>$2,483.02</strong></a></li>
                            <li><a href="#" class="red">0 周期</a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>

                <!-- Latest update widget -->
                <div class="widget">
                    <div class="title"><img src="images/icons/dark/refresh4.png" alt="" class="titleIcon" /><h6>平台动态</h6></div>

                    <div class="updates">
                        <div class="newUpdate">
                            <div class="uDone">
                                <a href="#" title=""><strong>新闻测试</strong></a>
                                <span>我们刚刚成立了一个新的服务器。我们的大师 ...</span>
                            </div>
                            <div class="uDate"><span class="uDay">08</span>feb</div>
                            <div class="clear"></div>
                        </div>

                        <div class="newUpdate">
                            <span class="uAlert">
                                <a href="#" title=""><strong>新闻测试</strong></a>
                                <span>但一切都已经解决了。它将 ...</span>
                            </span>
                            <span class="uDate"><span class="uDay">08</span>feb</span>
                            <div class="clear"></div>
                        </div>

                        <div class="newUpdate">
                            <span class="uDone">
                                <a href="#" title=""><strong>新闻测试</strong></a>
                                <span>我们只是通过1000销售!恭喜所有</span>
                            </span>
                            <span class="uDate"><span class="uDay">07</span>feb</span>
                            <div class="clear"></div>
                        </div>

                        <div class="newUpdate">
                            <span class="uNotice">
                                <a href="#" title=""><strong>新闻测试</strong></a>
                                <span>非常dyplomatic和灵活的销售经理</span>
                            </span>
                            <span class="uDate"><span class="uDay">06</span>feb</span>
                            <div class="clear"></div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="clear"></div>
        </div>
    </div>

    <!-- Footer line -->
    <div id="footer">
        <div class="wrapper">Copyright © 2016 华远软件官方演示站点-本站点只提供演示版权所有  <a href="#" target="_blank" title="拆包大厅">拆包大厅</a> | <a href="#" target="_blank" title="平台动态">平台动态</a> | <a href="#"投诉及建议" target="_blank">投诉及建议</a></div>
    </div>

</div>

<div class="clear"></div>

</body>
</html>