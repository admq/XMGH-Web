<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN" ng-app>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="renderer" content="webkit">
    <title>小马过河 | 后台管理</title>
    <link type="text/css" rel="stylesheet" href="/xmgh/admin/resource/css/framework.css" />
    <link type="text/css" rel="stylesheet" href="/xmgh/admin/resource/css/main.css" />
</head>
<body>
<div class="page">

	<c:import url="head.jsp"></c:import>

	<!--the main content begin-->
	<div class="container">
	<!--the content-->
		<div class="ui grid">
			<div class="wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large cloud icon"></i>
  							<div class="content">
    							${topic.title}
  							</div>
						</h3>
						${topic.content}
					</div>
				</div>
                <!--the products content-->
				<div class="ui comments">
					<c:forEach var="item" items="${replys}">
						<div class="comment">
							<a class="avatar">
								<img src="/xmgh/admin/resource/images/elliot.jpg">
							</a>
							<div class="content">
								<a class="author">${item.author}</a>
								<div class="metadata">
									<div class="date">${item.time}</div>
									<div class="rating"><i class="star icon"></i> 5 Faves </div>
								</div>
								<div class="text">${item.content}</div>
							</div>
						</div>
					</c:forEach>
					<div class="comment" id="comment_reply">
						<div class="actions">
							<a class="reply active">Reply</a>
						</div>
						<form class="ui reply form">
							<div class="field">
								<textarea name="reply"></textarea>
							</div>
							<div id="reply_btn" tid="${topic.id}" class="ui primary submit labeled icon button"><i class="icon edit"></i> Add Reply </div>
						</form>
					</div>
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

	<c:import url="foot.jsp"></c:import>
</div>

<script type="text/javascript" src="/xmgh/admin/resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="/xmgh/admin/resource/javascript/framework.js"></script>
<script type="text/javascript" src="/xmgh/admin/controller/common.js"></script>
<script type="text/javascript" src="/xmgh/admin/controller/seeTopic.js"></script>
<script>
    $(document).ready(function(){
		$('.ui.dropdown')
			.dropdown()
        ;
	});
</script>
</body>
</html>
