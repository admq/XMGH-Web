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
			<div class="four wide column">
				<div class="verticalMenu">
					<div id="alType" class="ui vertical pointing menu fluid">
  						<a class="item" href="publish_article.jsp">
							<i class="edit icon"></i> <b>  发布文章</b>
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
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large cloud icon"></i>
  							<div class="content">
    							文章列表
    							<div class="sub header">筛选结果如下</div>
  							</div>
						</h3>
					</div>
				</div>
                <!--the products content-->
				<div id="dis_tmpl" style="display:none;">
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
				</div>
				<div id="article_list"></div>
                <!--the pagination-->
                <%--<div class="ui pagination menu">
                    <a class="icon item">
                        <i class="icon left arrow"></i>
                    </a>
                    <a class="active item">
                        1
                    </a>
                    <div class="disabled item">
                        ...
                    </div>
                    <a class="item">
                        4
                    </a>
                    <a class="item">
                       5
                    </a>
                    <a class="item">
                        6
                    </a>
                    <a class="icon item">
                        <i class="icon right arrow"></i>
                    </a>
                </div>--%>
				<div id="pagination"></div>
			</div>
            <!--Pagination-->
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>
</div>

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
<script type="text/javascript" src="controller/common.js"></script>
<script type="text/javascript" src="controller/article_list.js"></script>
<script>
    $(document).ready(function(){
		$('.ui.dropdown')
			.dropdown()
        ;
	});
</script>
</body>
</html>
