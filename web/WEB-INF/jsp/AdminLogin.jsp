<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/7
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Title</title>
    <style type="text/css">


        .bigdiv {
            width: 410px;
            height: 400px;
            border: 1px solid blue;
            float: right;
            margin-right: 100px;
            margin-top: 200px;
        }

        .left {
            margin-top: 50px;
            width: 400px;
            height: 50px;

        }

        .left > div {
            float: left;
        }

        .left > .first {
            width: 100px;
            height: 40px;
            text-align: center;
            font-size: 1.5em;
        }

        .left > .second {
            width: 300px;
            height: 40px;
            text-align: center;

        }

        input {
            width: 300px;
            height: 30px;
            border-radius: 1.5px;
            border: 1px solid black;
        }

        #button {
            width: 409px;
            height: 50px;
            border-radius: 1px;
            background-color: #42B4FF;
            border: 1px solid white;
            color: white;
            font-size: 1.0em;
        }

    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js">
    </script>
    <script type="text/javascript">


    </script>
</head>
<body background="bg_login.jpg">
<form action="/loginServlet.action">
    <div class="bigdiv">
        <div class="left">
            <div class="first">用户名:</div>
            <div class="second"><input type="text" name="name"></div>
        </div>

        <span id="username"></span>

        <div class="left">
            <div class="first">密码:</div>
            <div class="second"><input type="password" name="password"></div>
        </div>
        <span id="password"></span>

        <div class="left"><input type="submit" value="登录" id="button"></div>


    </div>
</form>
</body>
</html>
