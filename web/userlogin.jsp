<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2018/7/2
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户登陆</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
    <style type="text/css">
        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }
        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }
        .form input {
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .form button {
            font-family: "Microsoft YaHei","Roboto", sans-serif;
            text-transform: uppercase;
            outline: 0;
            background: #4CAF50;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
        }
        .form button:hover,.form button:active,.form button:focus {
            background: #43A047;
        }
        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }
        .form .message a {
            color: #4CAF50;
            text-decoration: none;
        }
        .form .register-form {
            display: none;
        }
        .container {
            position: relative;
            z-index: 1;
            max-width: 300px;
            margin: 0 auto;
        }
        .container:before, .container:after {
            content: "";
            display: block;
            clear: both;
        }
        .container .info {
            margin: 50px auto;
            text-align: center;
        }
        .container .info h1 {
            margin: 0 0 15px;
            padding: 0;
            font-size: 36px;
            font-weight: 300;
            color: #1a1a1a;
        }
        .container .info span {
            color: #4d4d4d;
            font-size: 12px;
        }
        .container .info span a {
            color: #000000;
            text-decoration: none;
        }
        .container .info span .fa {
            color: #EF3B3A;
        }
        body {
            background: #76b852; /* fallback for old browsers */
            background: -webkit-linear-gradient(right, #76b852, #8DC26F);
            background: -moz-linear-gradient(right, #76b852, #8DC26F);
            background: -o-linear-gradient(right, #76b852, #8DC26F);
            background: linear-gradient(to left, #76b852, #8DC26F);
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        .shake_effect{
            -webkit-animation-name: shake;
            animation-name: shake;
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
        }
        @-webkit-keyframes shake {
            from, to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }

            10%, 30%, 50%, 70%, 90% {
                -webkit-transform: translate3d(-10px, 0, 0);
                transform: translate3d(-10px, 0, 0);
            }

            20%, 40%, 60%, 80% {
                -webkit-transform: translate3d(10px, 0, 0);
                transform: translate3d(10px, 0, 0);
            }
        }

        @keyframes shake {
            from, to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }

            10%, 30%, 50%, 70%, 90% {
                -webkit-transform: translate3d(-10px, 0, 0);
                transform: translate3d(-10px, 0, 0);
            }

            20%, 40%, 60%, 80% {
                -webkit-transform: translate3d(10px, 0, 0);
                transform: translate3d(10px, 0, 0);
            }
        }
        p.center{
            color: #fff;font-family: "Microsoft YaHei";
        }
    </style>
    <!--[if IE]>
    <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>
<%--<%
    //注册数据库驱动
    Class.forName("com.mysql.jdbc.Driver");
//获取数据库连接
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/software?user=root&password=961008&useSSL=false&serverTimezone=UTC");
//创建statement
    Statement stmt = conn.createStatement();
//执行查询
    String name=request.getParameter("login_name");
    String password=request.getParameter("login_password");
    String sql = "select password from user where name="+name;
    ResultSet rs = stmt.executeQuery(sql);
    rs.next();
    String pwcheck=rs.getString("password");
    if (password==pwcheck)
    {
        response.sendRedirect("index.jsp");
    }
    else {
        response.sendRedirect("404.html");
    }
%>--%>
    <%--<%--%>
        <%--String name=request.getParameter("login_name");--%>
        <%--String password=request.getParameter("login_password");--%>

    <%--//注册数据库驱动--%>
    <%--Class.forName("com.mysql.jdbc.Driver");--%>
<%--//获取数据库连接--%>
    <%--Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/software?user=root&password=961008&useSSL=false&serverTimezone=UTC");--%>
<%--//创建statement--%>
    <%--Statement stmt = conn.createStatement();--%>
<%--//执行查询--%>
        <%--String sql1 = "select password from user where name="+name;--%>
    <%--ResultSet rs = stmt.executeQuery(sql1);--%>
    <%--rs.next();--%>
    <%--String pw=rs.getString("password");--%>
<%--System.out.println(pw);--%>
        <%--System.out.println(password);--%>
<%--%>--%>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <h1>用户登录 </h1>
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="http://www.htmleaf.com/" title="jQuery之家" target="_blank"><span> jQuery之家</span></a>
            <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="http://www.htmleaf.com/jQuery/Form/201608183883.html" title="返回下载页" target="_blank"><span> 返回下载页</span></a>
        </div>
    </header>
    <div id="wrapper" class="login-page">
        <div id="login_form" class="form">
            <%--<form class="register-form" method="post" action="/register">--%>
                <%--<input type="text" name="register_name" placeholder="用户名" id="r_user_name"/>--%>
                <%--<input type="password" name="register_password" placeholder="密码" id="r_password" />--%>
                <%--<button type="submit" id="create">创建账户</button>--%>
                <%--<p class="message">已经有了一个账户? <a href="#">立刻登录</a></p>--%>
            <%--</form>--%>
            <form class="login-form" method="post" action="/login">
                <input name="login_name" type="text" placeholder="用户名" id="user_name"/>
                <input name="login_password" type="password" placeholder="密码" id="password"/>
                <button type="submit" id="login">登　录</button>
                <p class="message">还没有账户? <a href="#">立刻创建</a></p>
            </form>
        </div>
    </div>

    <!--<div class="related">-->
    <!--<h3>如果你喜欢这个插件，那么你可能也喜欢:</h3>-->
    <!--<a href="http://www.htmleaf.com/css3/ui-design/201603013167.html">-->
    <!--<img src="related/1.jpg" width="300" alt="简洁时尚的用户登录界面设计效果"/>-->
    <!--<h3>简洁时尚的用户登录界面设计效果</h3>-->
    <!--</a>-->
    <!--<a href="http://www.htmleaf.com/css3/ui-design/201510242702.html">-->
    <!--<img src="related/2.jpg" width="300" alt="Material Design风格用户注册登录界面设计"/>-->
    <!--<h3>Material Design风格用户注册登录界面设计</h3>-->
    <!--</a>-->
    <!--</div>-->
</div>

<script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
<script>window.jQuery || document.write('<script src="js/jquery-2.1.1.min.js"><\/script>')</script>
<script type="text/javascript">
    /*function check_login()
    {
        var name=$("#user_name").val();
        var pass=$("#password").val();
        if(name=="admin" && pass=="admin")
        {
            alert("登录成功！");
            window.location.href="index.jsp";
            $("#user_name").val("");
            $("#password").val("");

        }
        else
        {
            $("#login_form").removeClass('shake_effect');
            setTimeout(function()
            {
                $("#login_form").addClass('shake_effect')
            },1);
        }
    }*/
 /*   function check_register(){
        var name = $("#r_user_name").val();
        var pass = $("#r_password").val();

        if(name!="" && pass=="" )
        {
            alert("注册成功！");
            $("#user_name").val("");
            $("#password").val("");
        }
        else
        {
            $("#login_form").removeClass('shake_effect');
            setTimeout(function()
            {
                $("#login_form").addClass('shake_effect')
            },1);
        }
    }*/
    $(function(){
        $("#create").click(function(){
            check_register();
            return false;
        })
        $("#login").click(function(){
            check_login();
            return false;
        })
        $('.message a').click(function () {
            $('form').animate({
                height: 'toggle',
                opacity: 'toggle'
            }, 'slow');
        });
    })
</script>

</body>
</html>
