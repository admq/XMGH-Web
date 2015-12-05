<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>编辑产品 | Yeelink用户中心</title>
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
  						<a class="item" href="publish_article.jsp">
							<i class="rocket icon"></i> 部署新产品
  						</a>
  						<a class="active teal item" href="article_list.jsp">
    						<i class="cloud icon"></i> 我的产品
  						</a>
  						<a class="item" href="">
							<i class="bar chart icon"></i> 产品统计
  						</a>
					</div>
				</div>
			</div>
			<!--the newDevice form-->
			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large edit sign icon"></i>
  							<div class="content">
    							编辑产品
    							<div class="sub header">修改这个产品的相关信息</div>
  							</div>
						</h3>
					</div>
				</div>
				<div class="ui form fluid vertical segment">
					<form name="form" action="/user/edit_product" method="post">
						<div class="two fields">
                        	<div class="field">
                            	<label>产品名称</label>
                                <div class="ui small left icon input">
                                	<input type="text" placeholder="给产品起个响亮的名字，不超过30个字符……">
                                    <i class="cloud icon"></i>
                                </div>
                            </div>
                        </div>
                        <div class="two fields">
                            <div class="field">
                            	<label>产品模板</label>
                                <div class="ui small left icon input">
                                    <input type="text" readonly value="温室自动报警器">
                                    <i class="book icon"></i>
                                </div>
                            </div>
                        </div>
                        <div class="two fields">
                        	<div class="field">
                            	<label>序列号格式</label>
                                <div class="ui small left icon input">
                                	<input type="text" placeholder="Ymd+流水号">
                                    <i class="text file outline icon"></i>
                                </div>
                            </div>
                        </div>
                        <div class="two fields">
                            <div class="field">
                            	<label>产品密钥参数</label>
                                <div class="ui small left icon input">
                                	<input type="text">
                                    <i class="subscript icon"></i>
                                </div>
                            </div>
                        </div>
                            <div class="field">
                                <label>数据保密控制</label>
                                <div class="ui small input">
                                    <span class="ui checkbox">
                                      <input type="checkbox" name="">
                                      <label>平台开放</label>
                                    </span>
                                    <span class="ui checkbox">
                                      <input type="checkbox" name="">
                                      <label>仅对开发商开放</label>
                                    </span>
                                    <span class="ui checkbox">
                                      <input type="checkbox" name="">
                                      <label>不开放</label>
                                    </span>
                                </div>
							</div>
                        <div class="field">
                        	<label>产品描述</label>
                            <textarea placeholder="不超过150个字符……"></textarea>
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
<script>
    $('.ui.dropdown')
      .dropdown();

    $('.ui.checkbox')
      .checkbox();
</script>
</body>
</html>
