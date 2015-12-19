<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN" ng-app>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="renderer" content="webkit">
    <title>小马过河 | 后台管理</title>
</head>
<style>
</style>
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
					<div id="country" class="ui vertical pointing menu fluid">
  						<a class="item" href="javascript:void(0)" id="addCountry_btn">
							<i class="edit icon"></i> <b>  添加国家</b>
  						</a>
					</div>
				</div>
			</div>--%>
			<!--the Devicelist-->
			<div class="column">
				<div style="height: 60px; width: 100%;">
					<button class="ui basic left floated small button">管理员</button>
					<button class="ui basic left floated small button">普通用户</button>
					<button class="ui right floated button" id="addUser_btn">添加用户</button>
				</div>
				<div class="pageHeader"></div>
                <!--the products content-->
				<div  style="display: none;" id="user_tpl">
					<div class="item user_item" userid="v_id">
						<img class="ui avatar image yuan" src="/xmgh/admin/resource/images/elliot.jpg">
						<div class="content">
							<div class="header">v_name</div>v_tel </div>
					</div>
				</div>
				<div class="ui horizontal list" id="user_list">
					<div class="item user_item">
						<img class="ui avatar image yuan" src="/xmgh/admin/resource/images/elliot.jpg">
						<div class="content">
							<div class="header">Christian Rocha</div>管理员 </div>
					</div>
					<div class="item user_item">
						<img class="ui avatar image yuan" src="/xmgh/admin/resource/images/elliot.jpg">
						<div class="content">
							<div class="header">Matt</div>高级用户 </div>
					</div>
				</div>

				<div id="dis_tmpl" style="display:none;">
					<div class="ui device two column middle aligned vertical grid segment">
                    <div class="column verborder">
							<div class="ui info segment">
                                <h5 class="ui header">
                                    <a target="_blank" href="v_href">v_name <span class="ui type label">v_rank</span></a>
                                </h5>
							</div>
                    </div>
  					<div class="center aligned column">
                        <div class="ui buttons">
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

	<%-- 添加用户弹窗 --%>
	<div class="ui small modal" id="addUser">
		<i class="close icon"></i>
		<div class="header">
			添加用户
		</div>
		<div class="image content">
			<form class="ui form" action="" method="post">
				<div class="field">
					<div class="three fields">
						<div class="field">
							<input type="text" name="name" placeholder="用户名">
						</div>
						<div class="field">
							<input type="text" name="realname" placeholder="真实姓名">
						</div>
						<div class="field">
							<input type="text" name="identity" placeholder="身份证号码">
						</div>
					</div>
				</div>
				<div class="field">
					<div class="three fields">
						<div class="field">
							<div class="ui selection dropdown">
								<input type="hidden" name="roleid" value="">
								<div class="text">角色</div>
								<div class="menu" id="role_menu">
								</div>
							</div>
						</div>
						<div class="field">
							<input type="text" name="tel" placeholder="电话">
						</div>
						<div class="field">
							<input type="text" name="address" placeholder="地址">
						</div>
					</div>
				</div>
				<div class="field">
					<div class="three fields">
						<div class="field">
							<div class="ui selection dropdown">
								<input type="hidden" name="schoolid" value="">
								<div class="text">所在学校</div>
								<div class="menu">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="field">
					<div id="addUser_submit_btn" class="ui green right floated button">
						添加
					</div>
					<%--<div id="addSchool_hide_btn" class="ui black deny right floated button">
						取消
					</div>--%>
				</div>
			</form>
		</div>
	</div>

	<%-- 用户信息展示弹窗 --%>
	<div class="ui modal" id="userDisplay">
		<i class="close icon"></i>
		<div class="header" id="user_display_name">
			用户信息
		</div>
		<div class="image content">
			<form class="ui form" action="" method="post">
				<input type="text" name="id" style="display: none;" placeholder="">
				<div class="field">
					<div class="three fields">
						<div class="field">
							<label>用户名:</label>
							<input type="text" name="name" placeholder="">
						</div>
						<div class="field">
							<label>真实姓名:</label>
							<input type="text" name="realname" placeholder="">
						</div>
						<div class="field">
							<label>身份ID:</label>
							<input type="text" name="identity" placeholder="">
						</div>
					</div>
				</div>
				<div class="field">
					<div class="three fields">
						<div class="field">
							<label>电话:</label>
							<input type="text" name="tel" placeholder="">
						</div>
						<div class="field">
							<label>籍贯:</label>
							<input type="text" name="address" placeholder="">
						</div>
						<div class="field">
							<label>所在学校:</label>
							<div class="ui selection dropdown">
								<input type="hidden" name="schoolid" value="">
								<div class="text">所在学校</div>
								<div class="menu">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="field">
					<div id="save_btn" class="ui green right floated button">
						保存
					</div>
					<div id="edit_btn" class="ui black deny right floated button">
						编辑
					</div>
					<div id="del_btn" class="ui red deny right floated button">
						删除
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>
</div>

<script type="text/javascript" src="admin/controller/common.js"></script>
<script type="text/javascript" src="admin/controller/user_list.js"></script>
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
