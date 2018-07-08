<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2018/7/3
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查询结果</title>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
</head>
<body>
<%ResultSet rs=(ResultSet)request.getAttribute("result");%>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <h1>校园快递系统</h1>
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="index.jsp" title="返回主页" target="_blank"><span>返回主页</span></a>
            <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="login.jsp" title="重新登陆" target="_blank"><span> 返回下载页</span></a>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h1 class="h1">查询结果</h1>
                <%--<p>a jQuery plugin to paginate your DOM easily.</p>--%>
            </div>
            <div class="col-sm-8 col-sm-offset-2">
                <%-- <h3>Paginate  <code>&lt;tabel&gt;</code></h3>--%>
                <table class="table table-bordered">
                    <thead>

                    <tr>
                        <th width="50">货运单号</th>
                        <th>寄件人姓名</th>
                        <th>寄件人电话</th>
                        <th>寄件人地址</th>
                        <th>收件人姓名</th>
                        <th>收件人电话</th>
                        <th>收件人地址</th>
                        <th>物品种类</th>
                        <th>物品重量</th>
                        <th>价钱</th>
                        <th>快递公司</th>
                        <th>删除订单</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        //遍历结果集
                        while (true) {
                            if (!(rs.next()))
                                break;%>
                    <tr>
                        <!-- 输出结果集 -->
                        <td><%=rs.getString("ID") %>
                        </td>
                        <input type="hidden" name="ID" value="<%=rs.getString("ID") %>"/>
                        <td ><%=rs.getString("name_send") %>
                        </td>
                        <td><%=rs.getString("phone_send") %>
                        </td>
                        <td><%=rs.getString("add_send") %>
                        </td>
                        <td><%=rs.getString("name_accept") %>
                        </td>
                        <td><%=rs.getString("phone_accept") %>
                        </td>
                        <td><%=rs.getString("add_accept") %>
                        </td>
                        <td><%=rs.getString("kind") %>
                        </td>
                        <td><%=rs.getString("heavy") %>
                        </td>
                        <td><%=rs.getString("money") %>
                        </td>
                        <td><%=rs.getString("company") %>
                        </td>
                        <td><button type="submit">删除</button> </td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>

            </div>

        </div>
    </div>

</div>

<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
<script type="text/javascript" src="js/paginathing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($){
        for (var i = 1; i <= 150; i++) {
            $('.list-group').append('<li class="list-group-item"> Item ' + i + '</li>');
        }

        $('.list-group').paginathing({
            perPage: 5,
            limitPagination: 9,
            containerClass: 'panel-footer',
            pageNumbers: true
        })

        $('.table tbody').paginathing({
            perPage: 4,
            insertAfter: '.table',
            pageNumbers: true
        });
    });
</script>
</body>
</html>
