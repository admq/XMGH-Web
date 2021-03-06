<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="renderer" content="webkit">
    <title>管理API Key | Yeelink用户中心</title>
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
  						<a class="item" href="user_profile.jsp">
							<i class="edit icon"></i>账户设置
  						</a>
						<a class="active teal item" href="./apikey_manage.jsp">
							<i class="key icon"></i>管理API Key
						</a>
  						<a class="item" href="change_password.jsp">
    						<i class="lock icon"></i> 修改密码
  						</a>
					</div>
				</div>
			</div>
			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing  header">
  							<i class="large key icon"></i>
  							<div class="content">
    							管理API Key
    							<div class="sub header">可以生成新的API Key</div>
  							</div>
						</h3>
					</div>
				</div>
				<!--the user_profile form-->
                <div class="ui attached warning message">
                        <p><i class="info letter icon"></i>如果您不确定重新生成API Key对您意味着什么，我们不建议您进行此项操作.</p>
                </div>
                <form class="ui form attached fluid segment" action="/ueser/apikey_manage" name="form" method="post">
                    <div class="two fields">
                        <div class="field">
                            <label>API Key</label>
                            <div class="ui small left icon input">
                              <input class="text" id="api key" value="8e8fd8cad81ddef1179c9b690d0ba90a" readonly>
                              <i class="key icon"></i>
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="ui small labeled icon red button"><i class="refresh icon"></i>重新生成</div>
                    </div>
                </form>
			</div>
		</div>
	</div>
	<!--the api confirm modal-->
	<div class="ui basic modal">
  		<div class="content">
            <div class="center">
                <h3>重新生成意味着您之前的API Key将失效，您确定？</h3>
            </div>
        </div>
  		<div class="actions">
            <a class="ui small black button">
                    否
            </a>
            <a class="ui small positive right labeled icon button">
                    是
                <i class="checkmark icon"></i>
            </a>
    	</div>
	</div>

	<c:import url="foot.jsp"></c:import>

</div>

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
<script type="text/javascript">
	$('.ui.dropdown')
	.dropdown();
	$('.ui.basic.modal')
  	.modal('attach events','.red.button','show');
</script>
</body>
</html>
