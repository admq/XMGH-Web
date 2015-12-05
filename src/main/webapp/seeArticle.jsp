<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2015/9/26
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title><c:out value="${title}"></c:out></title>
    <link rel="stylesheet" href="../static/css/public.css">
</head>
<style>
</style>
<body>
<div class="toolBar">
    <%--<div class="backBtn">Back</div>--%>
</div>
    <div class="container">
        <h2>${title}</h2>
        <hr>
        ${content}
    </div>
</body>
</html>
