<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>批次 | Yeelink用户中心</title>
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
  						<a class="item" href="#">
							<i class="bar chart icon"></i> 产品统计
  						</a>
					</div>
				</div>
			</div>

			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large archive icon"></i>
  							<div class="content">
    							批次管理
    							<div class="sub header">新建产品批次与批次管理</div>
  							</div>
						</h3>
					</div>
				</div>

				<div class="ui vertical segment">
					<a class="ui red small labeled icon newbatch button"><i class="add sign box icon"></i>生成新批次</a>
                    <div class="ui small icon input right">
                      <input type="text" placeholder="输入批次号搜索……">
                      <i class="search icon"></i>
                    </div>
				</div>
                <!--batch table-->
                <table class="ui table">
                    <thead>
                        <tr>
                            <th>批 次</th>
                            <th>产品数</th>
                            <th>激活率</th>
                            <th>操 作</th>
                      	</tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td>L20131205-ylb-001</td>
                          <td>50</td>
                          <td>46%</td>
                          <td>
							<a class="ui mini basic button">冻结</a>
							<a class="ui mini basic button">删除</a>
						  </td>
                        </tr>
						<tr>
                          <td>L20131205-ylb-002</td>
                          <td>100</td>
                          <td>23%</td>
                          <td>
							<a class="ui mini basic button">冻结</a>
							<a class="ui mini basic button">删除</a>
						  </td>
                        </tr>
						<tr>
                          <td>L20131205-ylb-003</td>
                          <td>100</td>
                          <td>100%</td>
                          <td>
							<a class="ui mini basic button">冻结</a>
							<a class="ui mini basic button">删除</a>
						  </td>
                        </tr>
						<tr>
                          <td>L20131205-ylb-004</td>
                          <td>50</td>
                          <td>10%</td>
                          <td>
							<a class="ui mini basic button">冻结</a>
							<a class="ui mini basic button">删除</a>
						  </td>
                        </tr>
                    </tbody>
                </table>

                <div class="ui pagination menu">
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
            </div>
            </div>
        </div>
    </div>

    <c:import url="foot.jsp"></c:import>
</div>
<!--add batch model-->
<div class="ui small test newbatch modal">
    <i class="close icon"></i>
    <div class="header">
        新建批次
    </div>
    <div class="content">
            <div class="ui form vertical segment">
                <form name="form" method="post">
                    <div class="field">
                        <label>批次号 <small>(自动生成)</small></label>
                        <div class="ui small left icon input">
                            <input type="text" readonly value="L20131205-ylb-002">
                            <i class="ordered list icon"></i>
                        </div>
                    </div>
                    <div class="field">
                        <label>产品数目</label>
                        <div class="ui small left icon input">
                            <input type="number">
                            <i class="truck icon"></i>
                        </div>
                    </div>
                </form>
            </div>
    </div>
    <div class="actions">
        <div class="ui small black button">
               取消
        </div>
        <div class="ui small positive right labeled icon button">
            确定
          <i class="checkmark icon"></i>
        </div>
    </div>
</div>

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
<script>
    $('.ui.dropdown')
        .dropdown();

    $('.test.newbatch.modal')
		.modal('attach events','.newbatch.button','show');
</script>
</body>
</html>
