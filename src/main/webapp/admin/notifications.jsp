<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>我的消息 | Yeelink用户中心</title>
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
  						<a class="item" href="change_password.jsp">
    						<i class="lock icon"></i> 修改密码
  						</a>
						<a class="active teal item" href="./notifications.jsp">
    						<i class="chat icon"></i> 我的消息
  						</a>
					</div>
				</div>
			</div>
			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large chat icon"></i>
  							<div class="content">
    							我的消息
    							<div class="sub header">我的系统消息以及评论</div>
  							</div>
						</h3>
					</div>
				</div>
				<!--notifications feed-->
				<div class="ui vertical feed segment">
					<div class="event">
						<div class="label">
						  <img src="./resource/images/avatar-default.gif">
						</div>
						<div class="content">
							  <div class="date">
								刚刚
							  </div>
							  <div class="summary">
								 用户 <a>二明</a> 给您发了条新私信 ：
							  </div>
							  <div class="extra text">
								2014年到了，新年快乐啊！
							  </div>
						</div>
					</div>
					<div class="event">
						<div class="label">
						  <img src="./resource/images/avatar-default.gif">
						</div>
						<div class="content">
							  <div class="date">
								3分钟 前
							  </div>
							  <div class="summary">
								 用户 <a>小明</a> 评论了您的设备 <a>智能大棚监控系统</a> ：
							  </div>
							  <div class="extra text">
								我去，这个监控系统好智能。
							  </div>
						</div>
					</div>
					<div class="event">
						<div class="label">
						  <img src="./resource/images/avatar-default.gif">
						</div>
						<div class="content">
							  <div class="date">
								2小时 前
							  </div>
							  <div class="summary">
								 用户 <a>大明</a> 回复了您在设备 <a>智能大棚监控系统</a> 的评论：
							  </div>
							 <div class="extra text">
								原来是这样，这个设备哪儿能买？
							 </div>
						</div>
					</div>
					<div class="event">
						<div class="label">
						  <img src="./resource/images/yeelink-avatar.jpg">
						</div>
						<div class="content">
							  <div class="date">
								3天 前
							  </div>
							  <div class="summary">
								 您的VIP会员即将到期，请尽快 <a>充值</a> .
							  </div>
						</div>
					</div>
				</div>
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
