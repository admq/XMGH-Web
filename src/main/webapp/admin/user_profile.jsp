<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>账户设置 | Yeelink用户中心</title>
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
  						<a class="active teal item" href="./user_profile.jsp">
							<i class="edit icon"></i>账户设置
  						</a>
						<a class="item" href="apikey_manage.jsp">
							<i class="key icon"></i>管理API Key
						</a>
  						<a class="item" href="change_password.jsp">
    						<i class="lock icon"></i> 修改密码
  						</a>
						<a class="item" href="notifications.jsp">
    						<i class="chat icon"></i> 消息队列
  						</a>
					</div>
				</div>
			</div>
			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large edit icon"></i>
  							<div class="content">
    							账户设置
    							<div class="sub header">您的个人账户信息</div>
  							</div>
						</h3>
					</div>
				</div>
				<!--the user_profile form-->
				<div class="ui form vertical segment">
					<form action="/ueser/user_profile" name="form" method="post">
						<div class="two fields">
							<div class="field">
								<label>用户名</label>
								<div class="ui left labeled icon input">
									<input type="text" id="username" name="username" value="用户名" disabled="disabled">
									<i class="user icon"></i>
									<div class="ui corner label">
									</div>
								</div>
							</div>
                        </div>
                        <div class="two fields">
				            <div class="field">
								<label>电子邮箱</label>
								<div class="ui left labeled icon input">
								<input type="text" id="useremail" name="useremail" value="example@yeelink.net">
								<i class="mail icon"></i>
								</div>
				            </div>
						</div>
						<div class="field">
							<label>关 于</label>
							<textarea></textarea>
						</div>
						<input class="ui small blue submit button" type="submit" value="保存">
						<input class="ui small basic button" type="reset" value="取消">
					</form>
				</div>
			</div>
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>
</div>
<!--footer begin-->
<footer>
	<div id="copyrights">
		<div class="inset">
			<div class="bigcontainer">
				<div class="fl">
					<div class="logo"></div>
					<p>&copy; 2020 青岛亿联客信息技术有限公司, 版权所有<br />
<a href="http://www.miibeian.gov.cn" target="_blank">鲁ICP备12022271号</a></p>
				</div>
			</div>
		</div>
	</div>
</footer>

<script type="text/javascript">
	$('.ui.dropdown')
	.dropdown();
</script>
</body>
</html>
