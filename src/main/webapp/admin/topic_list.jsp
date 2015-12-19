<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN" ng-app>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="renderer" content="webkit">
    <title>小马过河 | 后台管理</title>
	<link rel="stylesheet" href="/xmgh/static/kindeditor/themes/default/default.css" />
</head>
<body>
<div class="page">

	<c:import url="head.jsp"></c:import>

	<!--the main content begin-->
	<div class="container">
	<!--the content-->
		<div class="ui grid">
			<!--the Devicelist-->
			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large cloud icon"></i>
  							<div class="content">
    							话题列表
  							</div>
						</h3>
                        <div>
                            <div class="ui mini input">
                                <input type="text" name="search" value="" />
                            </div>
                            <button id="add_topic_btn" class="small ui right floated basic button">添加话题</button>
                        </div>
					</div>
				</div>
                <!--the products content-->

				<div class="ui middle aligned divided list">
					<c:forEach var="item" items="${topics}">
						<div class="item" id="topic_${item.id}">
							<div class="right floated content">
								<div class="tiny ui button" tid='${item.id}'>删除</div>
							</div>
							<i class="large cloud icon"></i>
							<div class="content"><a href="topic/seeTopic?id=${item.id}">
								<span style="font-size: 14px;margin-right: 10px;color: green;">[ ${item.time} ]</span>
									${item.title}
							</a></div>
						</div>
					</c:forEach>
					<%--<div class="item">
						<div class="right floated content">
							<div class="tiny ui button">Add</div>
						</div>
						<i class="large cloud icon"></i>
						<div class="content">Lindsay </div>
					</div>
					<div class="item">
						<div class="right floated content">
							<div class="tiny ui button">Add</div>
						</div>
						<i class="large cloud icon"></i>
						<div class="content">Mark </div>
					</div>
					<div class="item">
						<div class="right floated content">
							<div class="tiny ui button">Add</div>
						</div>
						<i class="large cloud icon"></i>
						<div class="content">Molly </div>
					</div>--%>
				</div>

				<%--<div id="dis_tmpl" style="display:none;">
					<div class="ui device two column middle aligned vertical grid segment">
						<div class="column verborder">
								<div class="ui info segment">
									<h5 class="ui header">
										<a target="_blank" href="v_href">v_title <span class="ui type label">v_hot</span></a>
										<div class="sub header">v_describe</div>
									</h5>
								</div>
						</div>
						<div class="center aligned column">
							<div class="ui buttons">
								<a class="ui tiny blue button" href="product.jsp" title="管理产品"><i class="setting icon"></i>管 理</a>
								<a class="ui tiny basic button" href="javascript:v_del"><i class="trash icon" title="删除产品"></i>删 除</a>
							</div>
						</div>
					</div>
				</div>--%>
				<div></div>
                <!--the pagination-->
				<div id="pagination"></div>
			</div>
            <!--Pagination-->
		</div>
	</div>

	<div class="ui modal">
		<i class="close icon"></i>
		<div class="header">
			添加话题
		</div>
		<div class="image content">
			<div class="ui form fluid vertical segment">
				<form name="form" action="/xmgh/topic/addOrUpdate" method="post">

					<%-- hide fields --%>
					<input style="display: none;" name="belong" value="${group.get("id")}"/>

					<div class="two fields">
						<div class="field">
							<label>标题</label>
							<div class="ui small left icon input">
								<input type="text" name="title">
								<i class="cloud icon"></i>
							</div>
						</div>
					</div>

					<div class="field">
						<label>内容</label>
						<textarea id="content123" name="content" placeholder=""></textarea>
					</div>

					<input class="ui small blue submit button" type="submit" value="立即发布">
					<%--<input class="ui small basic button" type="reset" value="取消">--%>
				</form>
				<!--the form end-->
			</div>
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>
</div>

<script charset="utf-8" src="/xmgh/static/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="/xmgh/static/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" src="admin/controller/topic_list.js"></script>
<script>
    $(document).ready(function(){
		$('.ui.dropdown')
			.dropdown()
        ;
	});
</script>
</body>
</html>
