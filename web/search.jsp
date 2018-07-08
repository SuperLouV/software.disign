<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2018/6/30
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>快递查询</title>
    <link href="https://fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/style10.css" />
    <!--[if IE]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.js"></script>
    <![endif]--><script>document.documentElement.className = 'js';</script>
</head>
<body class="demo-10">
<svg class="hidden">
    <defs>
        <symbol id="icon-arrow" viewBox="0 0 24 24">
            <title>arrow</title>
            <polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
        </symbol>
        <symbol id="icon-drop" viewBox="0 0 24 24">
            <title>drop</title>
            <path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
        </symbol>
        <symbol id="icon-search" viewBox="0 0 24 24">
            <title>search</title>
            <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/>
        </symbol>
        <symbol id="icon-cross" viewBox="0 0 24 24">
            <title>cross</title>
            <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/>
        </symbol>
    </defs>
</svg>
<div class="page">
    <div class="page__single page__single--dummy"></div>
    <div class="page__single page__single--dummy"></div>
    <div class="page__single page__single--dummy"></div>
    <div class="page__single page__single--dummy"></div>
    <main class="main-wrap page__single">
        <header class="codrops-header">
            <div class="codrops-links">
                <a class="codrops-icon codrops-icon--prev" href="login2.jsp" title="重新登陆"><svg class="icon icon--arrow"><use xlink:href="#icon-arrow"></use></svg></a>
                <a class="codrops-icon codrops-icon--drop" href="index.jsp" title="主页"><svg class="icon icon--drop"><use xlink:href="#icon-drop"></use></svg></a>
            </div>
            <h1 class="codrops-header__title">Search </h1>
            <div class="search-wrap">
                <button id="btn-search" class="btn btn--search"><svg class="icon icon--search"><use xlink:href="#icon-search"></use></svg></button>
            </div>
        </header>
        <%--<div class="bottom-nav">--%>
        <%--<nav class="codrops-demos">--%>
        <%--<span>More demos: </span>--%>
        <%--<a href="index.html">1</a>--%>
        <%--<a href="index2.html">2</a>--%>
        <%--<a href="index3.html">3</a>--%>
        <%--<a href="index4.html">4</a>--%>
        <%--<a href="index5.html">5</a>--%>
        <%--<a href="index6.html">6</a>--%>
        <%--<a href="index7.html">7</a>--%>
        <%--<a href="index8.html">8</a>--%>
        <%--<a href="index9.html">9</a>--%>
        <%--<a class="current-demo" href="index10.html">10</a>--%>
        <%--<a href="index11.html">11</a>--%>
        <%--</nav>--%>
        <%--</div>--%>
    </main>
    <div class="search">
        <button id="btn-search-close" class="btn btn--search-close" aria-label="Close search form"><svg class="icon icon--cross"><use xlink:href="#icon-cross"></use></svg></button>
        <h1>输入寄件人手机号码查询</h1>
        <form class="search__form" action="/search1.jsp" method="get">
            <%-- <input class="search__input" name="search" type="search" placeholder="Find..." autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" />
             <span class="search__info">Hit enter to search or ESC to close</span>--%>
            <input type="text" style="height: 20px;width: 150px" name="phone_send" id="phone_send">

            <button  type="submit">查询</button>
        </form>
    </div><!-- /search -->
</div><!-- /page -->
<script src="js/demo10.js"></script>
</body>
</html>