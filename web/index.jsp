<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2018/6/30
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="../../javaweb/web/404.html"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>网站首页</title>
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
    <link rel="stylesheet" type="text/css" href="css/nav.css">
    <link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
    <style>
        #1{
            color: white;
        }
    </style>
</head>
<body>
<div class="nav">
    <div class="nav-top">
        <div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="images/mini.png" ></div>
    </div>
    <ul>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>系统管理</span><i class="my-icon nav-more"></i></a>
            <ul>
                <li><a href="login2.jsp"><span>管理员登陆</span></a></li>
                <li><a href="regist2.jsp"><span>增加管理员</span></a></li>
                <li><a href="showuser.jsp"><span>管理员列表</span></a></li>
                <%--去登陆页面，管理员与用户两个选项--%>
                <%--<li><a href="userlogin.jsp"><span>用户登录</span></a></li>--%>
                <li><a href="aboutus.html"><span>系统介绍</span></a></li>
                <li><a href="javascript:;"><span></span></a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>快递业务</span><i class="my-icon nav-more"></i></a>
            <ul>
                <li><a href="sender.jsp"><span>在线寄件</span></a></li>
                <%--<li><a href=""><span>收取快递</span></a></li>--%>
                <li><a href="search.jsp"><span>快递跟踪</span></a></li>
                <li><a href="showgood..jsp"><span>快递信息</span></a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>信息查询</span><i class="my-icon nav-more"></i></a>
            <ul>
                <li><a href="http://www.sf-express.com/cn/sc/dynamic_function/price/"><span>运费时效查询</span></a></li>
                <li><a href="http://www.sf-express.com/cn/sc/dynamic_function/store/"><span>服务网点查询</span></a></li>

            </ul>
        </li>
    </ul>
</div>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <h1>校园快递管理系统</h1>
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="index.jsp" title="返回主页" target="_blank"><span> 返回主页</span></a>
            <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="login2.jsp" title="重新登陆" target="_blank"><span> 重新登陆</span></a>
        </div>
    </header>
    <div class="related">
        <h3>快速导航:</h3>
        <a href="http://www.sf-express.com/cn/sc/">
            <img src="related/shunfeng.jpg" width="300" alt="顺丰官网"/>
            <%--<h3>顺丰官网</h3>--%>
        </a>
        <a href="http://www.yundaex.com/cn/index.php">
            <img src="related/yunda.jpg" width="300" alt="韵达官网"/>
            <%--<h3>韵达官网</h3>--%>
        </a>
        <a href="http://www.zto.com/">
            <img src="related/zhongtong.jpg" width="300" alt="中通官网"/>
            <%--<h3>中通官网</h3>--%>
        </a>
    </div>
</div>
<%--<div class="htmleaf-header" id="1" style="font-family: 幼圆">--%>
<div class="col-lg-10">
    <center>
    <table style="left: 200px">
        <tr>
            <td width="100">
                &nbsp  &nbsp
            </td>
            <td width="200">
                <p ><a class="nolink" href="javascript:void(0)">产品业务</a></p>
                <ul class="list">
                    <li> <a href="http://www.sf-express.com/cn/sc/express/express_service/city_distribution/instant_delivery/">快递服务</a></li>

                    <li> <a href="http://www.sf-express.com/cn/sc/express/cold_service/food_service/fresh_match/">冷运服务</a></li>

                    <li> <a href="http://www.sf-express.com/cn/sc/express/storage_service/storage_services/warehouse_management/">仓储服务</a></li>
                </ul>
            </td>
            <td width="200">
                <p ><a class="nolink" href="javascript:void(0)">金融</a></p>
                <ul class="list" >
                    <li> <a href="https://www.sf-financial.com/sfjrpc/?fc=ex&fp=nb&fa=pc&">财富管理</a></li>

                    <li> <a href="https://www.sf-financial.com/sfjrpc/?fc=ex&fp=nb&fa=pc&">资产管理</a></li>

                    <li> <a href="https://www.sf-financial.com/sfjrpc/?fc=ex&fp=nb&fa=pc&">综合支付</a></li>
                </ul>
            </td>
            <td width="200">
                <p ><a class="nolink" href="javascript:void(0)">成功案例</a></p>
                <ul class="list">
                    <li> <a href="http://www.sf-express.com/cn/sc/case_share/index.html_364584038.html">3C电子行业</a></li>

                    <li> <a href="http://www.sf-express.com/cn/sc/case_share/index.html_836109172.html">医疗行业</a></li>

                    <li> <a href="http://www.sf-express.com/cn/sc/case_share/index.html_591155569.html">生鲜行业</a></li>
                    <%--<li> <a href="express/storage_service/storage_services/warehouse_management/">快消行业</a></li>--%>
                </ul>
            </td>
            <td width="200">
                <p ><a class="nolink" href="javascript:void(0)">服务支持</a></p>
                <ul class="list">
                    <li> <a href="sender.jsp">我要寄件</a></li>

                    <li> <a href="sender.jsp">运单追踪</a></li>

                    <%--<li> <a href="express/storage_service/storage_services/warehouse_management/">运费时效查询</a></li>--%>
                    <%--<li> <a href="express/storage_service/storage_services/warehouse_management/">服务网点查询</a></li>--%>
                    <%--<li> <a href="express/storage_service/storage_services/warehouse_management/">收寄标准查询</a></li>--%>
                    <li> <a href="https://www.baidu.com/">更多内容查询</a></li>

                </ul>
            </td>

            <td height="290"></td>
        </tr>


    </table>
    </center>

        <%--<a href="http://v.hao123.baidu.com/">视频</a>--%>
        <%--<a href="http://www.iqiyi.com/">爱奇艺</a>--%>
        <%--<a href="http://www.youku.com/">优酷网</a>--%>
        <%--<a href="http://v.hao123.baidu.com/">百度视频</a>--%>
        <%--<a href="http://www.iqiyi.com/">腾讯视频</a>--%>
        <%--<a href="http://www.youku.com/">芒果TV</a>--%>
        <%--<a href="http://www.youku.com/">搜狐视频</a><br>--%>
        <%--<a href="http://v.hao123.baidu.com/">新闻</a>--%>
        <%--<a href="http://v.hao123.baidu.com/">新浪新闻</a>--%>
        <%--<a href="http://www.iqiyi.com/">腾讯新闻</a>--%>
        <%--<a href="http://www.youku.com/">东方头条</a>--%>
        <%--<a href="http://v.hao123.baidu.com/">百度新闻</a>--%>
        <%--<a href="http://www.iqiyi.com/">搜狐新闻</a>--%>
        <%--<a href="http://www.youku.com/">环球网</a><br>--%>
        <%--<a href="http://v.hao123.baidu.com/">军事</a>--%>
        <%--<a href="http://www.iqiyi.com/">中华军事</a>--%>
        <%--<a href="http://www.youku.com/">米尔军事</a>--%>
        <%--<a href="http://v.hao123.baidu.com/">铁血军事</a>--%>
        <%--<a href="http://www.iqiyi.com/">环球军事</a>--%>
        <%--<a href="http://www.youku.com/">凤凰军事</a><br>--%>
        <%--<a href="http://v.hao123.baidu.com/">体育</a>--%>
        <%--<a href="http://www.iqiyi.com/">新浪·NBA</a>--%>
        <%--<a href="http://www.youku.com/">搜狐体育</a>--%>
        <%--<a href="http://v.hao123.baidu.com/">CCTV5</a>--%>
        <%--<a href="http://www.iqiyi.com/">虎扑体育</a>--%>
        <%--<a href="http://www.youku.com/">腾讯体育</a><br>--%>

</div>

<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
<script type="text/javascript" src="js/nav.js"></script>
</body>
</html>
</html>
