<%--
  Created by IntelliJ IDEA.
  User: larry
  Date: 10/6/15
  Time: 10:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title></title>
    <base href="<%=basePath%>" />
    <link type="text/css" rel="stylesheet" href="admin/resource/css/framework.css" />
    <link type="text/css" rel="stylesheet" href="admin/resource/css/main.css" />
    <script type="text/javascript" src="admin/resource/javascript/jquery.min.js"></script>
    <script type="text/javascript" src="admin/resource/javascript/framework.js"></script>
  <script type="text/javascript" src="admin/controller/common.js"></script>
</head>
<body>
  <!--header begin-->
  <header>
    <div class="bigcontainer">
      <div id="logo">
        <!--<a href="./">小马过河后台管理</a>-->
        <h2>小马过河后台管理</h2>
      </div>
      <div class="user">
        <div class="ui compact notif menu">
          <a class="item">
            <i class="mail large icon"></i>
            <span class="circular floating ui small red label"> 2 </span>
          </a>
        </div>
        <div class="ui inline labeled icon top right pointing dropdown">
          <%--<img class="ui avatar image" src="resource/images/avatar-default.gif">--%>
          欢迎<b> <shiro:principal /> </b>
          <i class="dropdown icon"></i>
          <div class="menu">
            <a class="item" href="index.jsp"><i class="reply mail icon"></i>返回首页</a>
            <a class="item" href="/admin/out"><i class="sign out icon"></i>注销登录</a>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- the main menu-->
  <div class="ui teal inverted menu">
    <div class="bigcontainer">
      <div class="menu"> <!--right-->
        <a class="active item" href="admin/index.jsp"><i class="home icon"></i>管理首页</a>
        <%--<a class="item" href="devices_list.jsp"><i class="sitemap icon"></i>设备</a>
        <a class="item" href="article_list.jsp"><i class="cloud icon"></i>产品</a>--%>
        <a class="item" href="admin/article_list.jsp"><i class="file icon"></i>文章</a>
        <a class="item" href="admin/group_list.jsp"><i class="github icon"></i>圈子</a>
        <a class="item" href="admin/article_list.jsp"><i class="user icon"></i>用户</a>
        <%--<a class="item" href="article_list.jsp"><i class="users icon"></i>角色</a>--%>
        <a class="item" href="admin/school_list.jsp"><i class="doctor icon"></i>学校</a>
        <a class="item" href="admin/user_profile.jsp"><i class="info icon"></i>个人账户</a>
      </div>
    </div>
  </div>
</body>
</html>
