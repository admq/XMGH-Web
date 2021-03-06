<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="renderer" content="webkit">
    <title>设备动作 | Yeelink用户中心</title>
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
  						<a class="item" href="add.jsp">
							<i class="add icon"></i> 绑定新设备
  						</a>
  						<a class="item" href="devices_list.jsp">
    						<i class="settings icon"></i> 我的设备
  						</a>
  						<a class="active teal item" href="./actions.jsp">
							<i class="terminal icon"></i> 设备动作
  						</a>
					</div>
				</div>
			</div>
			<!--the newDevice form-->
			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large terminal icon"></i>
  							<div class="content">
    							设备动作
    							<div class="sub header">自定义您的设备动作</div>
  							</div>
						</h3>
					</div>
				</div>
				<div class="ui vertical segment">
					<a class="ui red small labeled icon add button" href="new_action.jsp"><i class="add icon"></i>增加新动作</a>
                    <div class="ui small icon input right">
                          <input type="text" placeholder="输入动作名搜索……">
                          <i class="search icon"></i>
                    </div>
				</div>
				<div class="ui form fluid vertical segment">
					<form name="form" action="/user/actions" method="post">
							<table class="ui basic table">
  								<thead>
    								<tr>
    								<th>动作名</th>
    								<th>类型</th>
    								<th>是否使用</th>
    								<th>操作</th>
  									</tr>
								</thead>
  								<tbody>
									<tr>
      									<td>示例动作01</td>
      									<td>电子邮件</td>
										<td><i class="icon close"></i></td>
										<td><a class="ui tiny blue edit button" href="edit_action.jsp"><i class="edit icon"></i>编辑</a> <a class="ui tiny basic button"><i class="trash icon"></i>删除</a></td>
    								</tr>
									<tr class="positive">
      									<td>示例动作01</td>
      									<td>电子邮件</td>
										<td><i class="icon checkmark"></i></td>
										<td><a class="ui tiny blue edit button" href="edit_action.jsp"><i class="edit icon"></i>编辑</a> <a class="ui tiny basic button"><i class="trash icon"></i>删除</a></td>
    								</tr>
									<tr>
      									<td>示例动作01</td>
      									<td>电子邮件</td>
										<td><i class="icon close"></i></td>
										<td><a class="ui tiny blue edit button" href="edit_action.jsp"><i class="edit icon"></i>编辑</a> <a class="ui tiny basic button"><i class="trash icon"></i>删除</a></td>
    								</tr>
									<tr>
      									<td>示例动作01</td>
      									<td>电子邮件</td>
										<td><i class="icon close"></i></td>
										<td><a class="ui tiny blue edit button" href="edit_action.jsp"><i class="edit icon"></i>编辑</a> <a class="ui tiny basic button"><i class="trash icon"></i>删除</a></td>
    								</tr>
  								</tbody>
							</table>
					</form>
					<!--the form end-->
				</div>
			</div>
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>
</div>

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
<script>
	$('.ui.dropdown')
		.dropdown();
</script>
</body>
</html>
