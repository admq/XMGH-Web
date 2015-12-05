<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<html>
<body>
<h2>Hello World!</h2>
<ul>
    <li><a href="login.html">Login</a></li>
    <shiro:authenticated>
        <li>
            <a href="user">User</a>
            <ul>
                <shiro:hasPermission name="view"><li><a>view</a></li></shiro:hasPermission>
                <shiro:hasPermission name="update"><li><a>update</a></li></shiro:hasPermission>
                <shiro:hasPermission name="delete"><li><a>delete</a></li></shiro:hasPermission>
            </ul>
        </li>
    </shiro:authenticated>
    <shiro:authenticated><li><a href="article">Article</a></li></shiro:authenticated>
    <shiro:hasRole name="admin"><li><a href="admin/index.jsp">Admin</a></li></shiro:hasRole>
</ul>
</body>
</html>
