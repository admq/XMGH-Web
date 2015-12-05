<%--
  Created by IntelliJ IDEA.
  User: larry
  Date: 10/6/15
  Time: 11:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小马过河后台管理</title>
    <link type="text/css" rel="stylesheet" href="resource/css/framework.css" />
    <link type="text/css" rel="stylesheet" href="resource/css/main.css" />
</head>
<body>
<div class="page">
    <div class="container">
        <div class="ui grid">
            <div class="three column row">
                <div class="column"></div>
                <div class="column">
                    <h1>登录</h1>
                    <form class="ui form" action="/xmgh/admin/login">
                        <div class="field">
                            <label>用户名</label>
                            <input type="text" name="name" placeholder="User Name">
                        </div>
                        <div class="field">
                            <label>密码</label>
                            <input type="password" name="pass" placeholder="Pass">
                        </div>
                        <div class="field">
                            <div class="ui checkbox">
                                <input type="checkbox" tabindex="0" class="hidden">
                                <label>记住我</label>
                            </div>
                        </div>
                        <button class="ui button" type="submit">登录</button>
                    </form>
                </div>
                <div class="column"></div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>

<script>
    $('.ui.checkbox').checkbox();
</script>
</body>
</html>
