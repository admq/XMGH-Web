<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
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
			<!--the newDevice form-->
			<div class="wide column"> <%--twelve--%>
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large rocket icon"></i>
  							<div class="content">
    							发布文章
    							<div class="sub header">发布文章</div>
  							</div>
						</h3>
					</div>
				</div>
				<div class="ui form fluid vertical segment">
					<form name="form" action="/xmgh/article/addOrUpdate" method="post">
						<div class="two fields">
                        	<div class="field">
                            	<label>标题</label>
                                <div class="ui small left icon input">
                                	<input type="text" name="title" placeholder="文章标题...">
                                    <i class="cloud icon"></i>
                                </div>
                            </div>
                        </div>
                        <div class="two fields">
                            <div class="field">
                            	<label>文章分类</label>
                                <div class="ui selection dropdown">
                                      <input type="hidden" name="articletype" value="">
                                      <div class="text"></div>
                                      <%--<i class="dropdown icon"></i>--%>
                                      <div class="menu">
                                            <div class="item" data-value="温室自动报警器">温室自动报警器</div>
                                        	<div class="item" data-value="设备01">设备01</div>
                                        	<div class="item" data-value="设备02">设备02</div>
                                        	<div class="item" data-value="设备03">设备03</div>
                                      </div>
                                </div>
                                <a class="ui mini red button" id="add_articleType_btn" href="javascript:void(0);">创建新分类</a>
                            </div>
                        </div>
                        <div class="two fields">
                            <div class="field">
                                <label>来源</label>
                                <div class="ui small left icon input">
                                    <input type="text" name="src" placeholder="">
                                    <i class="text file outline icon"></i>
                                </div>
                            </div>
                        </div>
                        <div class="two fields">
                            <div class="field">
                            	<label>责任编辑</label>
                                <div class="ui small left icon input">
                                	<input type="text" name="dutyeditor" placeholder="">
                                    <i class="text file outline icon"></i>
                                </div>
                            </div>
                        </div>

                        <div class="field">
                        	<label>内容</label>
                            <textarea id="content" name="content" placeholder=""></textarea>
                        </div>

                    <input class="ui small blue submit button" type="submit" value="立即发布">
                    <%--<input class="ui small basic button" type="reset" value="取消">--%>
					</form>
					<!--the form end-->
				</div>
			</div>
		</div>
	</div>

    <div class="ui small modal">
        <i class="close icon"></i>
        <div class="header">
            添加文章类型
        </div>
        <div class="image content">
            <form class="ui form" action="" method="post">
                <div class="field">
                    <div class="field">
                        <input type="text" name="name" placeholder="文章类型名称">
                    </div>
                </div>

                <div class="field">
                    <div id="addArticleType_submit_btn" class="ui green right floated button">
                        添加
                    </div>
                    <div id="addArticleType_hide_btn" class="ui black deny right floated button">
                        取消
                    </div>
                </div>
            </form>
        </div>
    </div>

	<c:import url="foot.jsp"></c:import>
</div>

<script charset="utf-8" src="/xmgh/static/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="/xmgh/static/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" src="admin/controller/publish_article.js"></script>
<script>
	$('.ui.selection.dropdown')
      .dropdown();

    $('.ui.dropdown')
      .dropdown();

    $('.ui.checkbox')
      .checkbox();

</script>
</body>
</html>
