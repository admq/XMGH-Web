<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN" ng-app>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="renderer" content="webkit">
    <title>小马过河 | 后台管理</title>
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
					<div id="country" class="ui vertical pointing menu fluid">
  						<a class="item" href="javascript:void(0)" id="addCountry_btn">
							<i class="edit icon"></i> <b>  添加国家</b>
  						</a>
						<%--<a class="active teal item" href="./article_list.jsp">
                          <i class="cloud icon"></i> 我的产品
                        </a>
                        <a class="item" href="#">
                          <i class="bar chart icon"></i> 产品统计
                        </a>--%>
					</div>
				</div>
			</div>
			<!--the Devicelist-->
			<div class="twelve wide column">
				<div class="pageHeader">
					<%--<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large cloud icon"></i>
  							<div class="content" style="width: 80%;">
    							学校列表
    							<div class="sub header">筛选结果如下</div>
								<a style="float: right;" href="#">添加学校</a>
  							</div>
						</h3>
					</div>--%>
					<button class="ui right floated button" id="addSchool_btn">添加学校</button>

				</div>
                <!--the products content-->
				<div id="dis_tmpl" style="display:none;">
					<div class="ui device two column middle aligned vertical grid segment">
                    <div class="column verborder">
							<div class="ui info segment">
                                <h5 class="ui header">
                                    <a target="_blank" href="v_href">v_name <span class="ui type label">v_rank</span></a>
                                    <%--<div class="sub header">v_describe</div>--%>
                                </h5>
							</div>
                    </div>
  					<div class="center aligned column">
                        <div class="ui buttons">
  							<%--<a class="ui tiny blue button" href="product.jsp" title="管理产品"><i class="setting icon"></i>管 理</a>--%>
							<a class="ui tiny basic button" href="javascript:v_del"><i class="trash icon" title="删除产品"></i>删 除</a>
						</div>
  					</div>
				</div>
				</div>
				<div id="school_list"></div>
                <!--the pagination-->
				<div id="pagination"></div>
			</div>
            <!--Pagination-->
		</div>
	</div>

	<%-- 添加国家 --%>
	<div class="ui small modal" id="addCountry">
		<i class="close icon"></i>
		<div class="header">
			添加国家
		</div>
		<div class="image content">
			<form class="ui form" action="" method="post">
				<div class="field">
					<div class="two fields">
						<div class="field">
							<input type="text" name="name" placeholder="国家名称">
						</div>
						<div class="field">
							<input type="text" name="englishname" placeholder="国家英文名称">
						</div>
					</div>
				</div>
				<div class="field">
					<div id="addCountry_submit_btn" class="ui green right floated button">
						添加
					</div>
					<div id="addCountry_hide_btn" class="ui black deny right floated button">
						取消
					</div>
				</div>
			</form>
		</div>
	</div>

	<%-- 添加学校弹窗 --%>
	<div class="ui small modal" id="addSchool">
		<i class="close icon"></i>
		<div class="header">
			添加学校
		</div>
		<div class="image content">
			<form class="ui form" action="" method="post">
				<div class="field">
					<div class="two fields">
						<div class="field">
							<input type="text" name="name" placeholder="学校名称">
						</div>
						<div class="field">
							<input type="text" name="englishname" placeholder="学校英文名称">
						</div>
					</div>
				</div>
				<div class="field">
					<div class="two fields">
						<div class="field">
							<input type="text" name="shortname" placeholder="学校短名称">
						</div>
						<div class="field">
							<div class="ui selection dropdown">
								<input type="hidden" name="countryid" value="">
								<div class="text">所属国家</div>
								<div class="menu">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="field">
					<div id="addSchool_submit_btn" class="ui green right floated button">
						添加
					</div>
					<div id="addSchool_hide_btn" class="ui black deny right floated button">
						取消
					</div>
				</div>
			</form>
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>
</div>

<script type="text/javascript" src="admin/controller/common.js"></script>
<script type="text/javascript" src="admin/controller/school_list.js"></script>
<script>
    $(document).ready(function(){
		$('.ui.selection.dropdown')
				.dropdown();

		$('.ui.dropdown')
				.dropdown();

		$('.ui.checkbox')
				.checkbox();
	});


</script>
</body>
</html>
