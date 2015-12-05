<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN" ng-app>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="renderer" content="webkit">
    <title>小马过河 | 后台管理</title>
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
			<%--<div class="four wide column">
				<div class="verticalMenu">
					<div id="alType" class="ui vertical pointing menu fluid">
						<a class="item" href="publish_article.jsp">
							<i class="edit icon"></i> <b>  发布文章</b>
						</a>
					</div>
				</div>
			</div>--%>
			<!--the Devicelist-->
			<div class="">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
							<i class="medium Filter icon"></i>
							<div class="content">
								筛选条件
								<%--<div class="sub header">筛选结果如下</div>--%>
							</div>
						</h3>
						<div>
							<div class="ui selection dropdown">
								<input type="hidden" name="schoolid" value="">
								<div class="text">所属学校</div>
								<%--<i class="dropdown icon"></i>--%>
								<div class="menu" id="s_select_school">
								</div>
							</div>
							<button id="add_group_btn" class="small ui right floated basic button">添加圈子</button>
						</div>
					</div>
				</div>
				<!--the products content-->
				<div id="dis_tmpl" style="display:none;">
					<div class="ui device two column middle aligned vertical grid segment">
					<div class="column verborder">
						<div class="ui info segment">
							<h4 class="ui header">
								<a target="_blank" href="v_href">v_name</a>
								<div class="sub header">v_describe</div>
							</h4>
						</div>
					</div>
					<div class="center aligned column">
						<div class="ui buttons">
							<a class="ui tiny blue button" href="product.jsp" title="管理产品"><i class="setting icon"></i>管 理</a>
							<a class="ui tiny basic button" href="javascript:v_del"><i class="trash icon" title="删除产品"></i>删 除</a>
						</div>
					</div>
				</div>
				</div>
				<div id="group_list"></div>
				<div id="pagination"></div>
			</div>
			<!--Pagination-->
		</div>
	</div>

	<div class="ui modal">
		<i class="close icon"></i>
		<div class="header">
			添加圈子
		</div>
		<div class="image content">
			<form class="ui form" action="" method="post">
				<div class="field">
					<div class="two fields">
						<div class="field">
							<input type="text" name="name" placeholder="圈子名称">
						</div>
						<div class="field">
							<div class="ui selection dropdown">
								<input type="hidden" name="schoolid" value="">
								<div class="text">所属学校</div>
								<%--<i class="dropdown icon"></i>--%>
								<div class="menu" id="select_school">
								</div>
							</div>
							<%--<input type="text" name="schooleid" placeholder="所属学校">--%>
						</div>
					</div>
				</div>
				<div class="field">
					<label>圈子简介</label>
					<textarea name="describe" rows="2"></textarea>
				</div>

				<div class="field">
					<div id="addGroup_submit_btn" class="ui green right floated button">
						添加
					</div>
					<div id="addGroup_hide_btn" class="ui black deny right floated button">
						取消
					</div>
				</div>
			</form>
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>
</div>

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
<script type="text/javascript" src="controller/common.js"></script>
<script type="text/javascript" src="controller/group_list.js"></script>
<script>
    $(document).ready(function(){
		$('.ui.dropdown')
			.dropdown()
        ;
	});
</script>
</body>
</html>
