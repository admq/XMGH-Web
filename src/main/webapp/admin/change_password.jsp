<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="renderer" content="webkit">
    <title>修改密码 | Yeelink用户中心</title>
    <link type="text/css" rel="stylesheet" href="resource/css/framework.css" />
    <link type="text/css" rel="stylesheet" href="resource/css/main.css" />
</head>
<body>
<div class="page">

	<c:import url="head.jsp"></c:import>

	<!--the main content begin-->
	<div class="container">
	<!--the content-->
		<div class="ui grid">
			<!--the vertical menu-->
			<div class="four wide column">
				<div class="verticalMenu">
					<div class="ui vertical pointing menu fluid">
  						<a class="item" href="user_profile.jsp">
							<i class="edit icon"></i>账户设置
  						</a>
						<a class="item" href="apikey_manage.jsp">
							<i class="key icon"></i>管理API Key
						</a>
  						<a class="active teal item" href="./change_password.jsp">
    						<i class="lock icon"></i> 修改密码
  						</a>
					</div>
				</div>
			</div>
			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing  header">
  							<i class="large unlock alternate icon"></i>
  							<div class="content">
    							修改密码
  							</div>
						</h3>
					</div>
				</div>
				<!--the form-->
                <form class="ui form vertical segment" action="/user/change_password" name="form" method="post">
                    <div class="two fields">
                        <div class="field">
                            <label>原密码</label>
                            <div class="ui small left icon input">
                              <input type="password" id="password" name="password" size="30">
                              <i class="lock icon"></i>
                            </div>
                        </div>
                    </div>
                    <div class="two fields">
                    	<div class="field">
                        	<label>新密码</label>
                            <div class="ui small left icon input">
                            	<input type="password" id="password1" name="password1" size="30">
                                <i class="lock icon"></i>
                            </div>
                        </div>
                    </div>
                    <div class="two fields">
                    	<div class="field">
                        	<label>确认新密码</label>
                            <div class="ui small left icon input">
                            	<input type="password" id="password2" name="password2" size="30">
                                <i class="lock icon"></i>
                            </div>
                        </div>
                    </div>
                    <input class="ui small blue submit button" type="submit" value="保存">
                    <input class="ui small basic button" type="reset" value="取消">
                </form>
			</div>
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>

</div>

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
<script type="text/javascript">
	$('.ui.dropdown')
	.dropdown();
</script>
</body>
</html>
