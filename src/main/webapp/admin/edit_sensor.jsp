<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>编辑传感器 | Yeelink用户中心</title>
    <link type="text/css" rel="stylesheet" href="resource/css/jquery.tagsinput.css" />
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
  						<a class="item">
							<i class="add icon"></i> 绑定新设备
  						</a>
  						<a class="active teal item">
    						<i class="settings icon"></i> 我的设备
  						</a>
  						<a class="item">
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
  							<i class="large edit icon"></i>
  							<div class="content">
    							编辑传感器
  							</div>
						</h3>
					</div>
				</div>
				<div class="ui form fluid vertical segment">
					<form name="form" action="/user/new_sensor/" method="post">
						<div class="two fields">
							<div class="field">
								<label>传感器名</label>
								<div class="ui small left labeled icon input">
									<input type="text" placeholder="给您的传感器起个容易记住的名字……" id="device_title" name="device_title" value=""/>
									<i class="exchange icon"></i>
								</div>
							</div>
						</div>
                        <div class="field">
							<label>类型</label>
							<div class="ui dropdown selection">
      							<input type="hidden" name="gender" value="1">
      							<div class="default text">数值型</div>
      							<i class="dropdown icon"></i>
      							<div class="menu" name="sensor_type" id="sensor_type">
        							<div class="item active" data-value="数值型" value="0">数值型</div>
        							<div class="item" data-value="开关型" value="5">开关型</div>
                                    <div class="item" data-value="GPS型" value="6">GPS型</div>
                                    <div class="item" data-value="泛传感器型" value="8">泛传感器型</div>
                                    <div class="item" data-value="图像传感器型" value="9">图像传感器型</div>
                                    <div class="item" data-value="微博抓取型" value="10">微博抓取型</div>
      							</div>
    						</div>
						</div>
                        <div class="two fields">
                            <div class="field">
                                <label>标签（tags）</label>
                                <input type="text" id="sensor_tags" name="sensor_tags">
                            </div>
                        </div>
						<div class="field">
							<label>描述</label>
							<textarea placeholder="不超过30个字符……"></textarea>
						</div>
						<input class="ui small blue submit button" type="submit" value="保存">
						<input class="ui small basic button" type="reset" value="取消">
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
<script type="text/javascript" src="resource/javascript/jquery.tagsinput.js"></script>
<script>
    $('.ui.dropdown')
		.dropdown();
    $('#sensor_tags').tagsInput();
</script>
</body>
</html>
