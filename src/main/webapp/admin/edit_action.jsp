<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="renderer" content="webkit">
    <title>编辑动作 | Yeelink用户中心</title>
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
  						<a class="item" href="add.jsp">
							<i class="add icon"></i> 绑定新设备
  						</a>
  						<a class="item" href="devices_list.jsp">
    						<i class="settings icon"></i> 我的设备
  						</a>
  						<a class="active teal item" href="actions.jsp">
							<i class="terminal icon"></i> 设备动作
  						</a>
					</div>
				</div>
			</div>

            <div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large edit icon"></i>
  							<div class="content">编辑动作
  							</div>
						</h3>
					</div>
				</div>
				<form class="ui form fluid vertical segment" action="/user/new_action" name="form" method="post">
                    <div class="two fields">
                    	<div class="field">
                            <label>动作名</label>
                            <div class="ui small left labeled icon input">
                                <i class="terminal icon"></i>
                                <input type="text" id="actName" name="actName">
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <label>类型</label>
                            <select class="form-control" id="actType">
                                <option value="2">电子邮件</option>
                                <option value="3">网址推送</option>
                                <option value="4">微博发布</option>
                                <option value="6">移动端推送</option>
                            </select>
                    </div>
                    <div class="two fields">
                    	<div class="field" id="email">
                        	<label>邮箱地址</label>
                            <div class="ui small left labeled icon input">
                            	<i class="mail icon"></i>
                                <input type="email" id="emailAddress" name="emailAddress">
                            </div>
                        </div>
                    </div>
                    <div class="two fields" id="url" style="display:none;">
                    	<div class="field">
                            <input type="radio" id="chooseUrl_1" class="chooseUrl" name="chooseUrl" value="1" checked="checked"/>推送到开关
                            <input type="radio" id="chooseUrl_2" class="chooseUrl" name="chooseUrl" value="2">推送到其它网址
                            <br>
                            <span class="chooseSwitch ui dropdown selection">
                                <input type="hidden">
                                <span class="default text">示例动作01</span>
                                <i class="dropdown icon"></i>
                                <span class="menu">
                                    <span class="item" data-value="1">示例动作01</span>
                                    <span class="item" data-value="2">示例动作02</span>
                                </span>
                            </span>
                            <span class="writeUrl ui small left labeled icon input" style="display:none;">
                                <i class="url icon"></i>
                                <input class="text-input small-input" type="text" id="postUrl_2" name="postUrl_2" placeholder="网址须以'http://'开始">
                            </span>
                        </div>
                    </div>

                    <div class="field" id="weibo" style="display:none;">
                        <label>微博提供商</label>
                        <select class="form-control" name="weiboProvider" id="weiboProvider">
                          <option value="sina">新浪微博</option>
                          <option value="tencent">腾讯微博</option>
                        </select>
                        <input type="hidden" id="access_token" name="access_token" value="" />
                        <input type="hidden" id="create_at" name="create_at" value=""/>
                        <input type="hidden" id="remind_in" name="remind_in" value=""/>
                        <input type="hidden" id="expires_in" name="expires_in" value=""/>
                        <input type="hidden" id="uid" name="uid" value=""/>
                        <input type="hidden" id="openid" name="openid" value=""/>
                        <input type="hidden" id="openkey" name="openkey" value=""/>
                        <input type="button" class="ui mini green button" id="weiboGetAuth" name="weiboGetAuth" value="获取授权"/>
                        <div class="ui pointing left label">
                          使用微博发布功能, 需要授权"Yeelink微博提醒"访问您的微博帐号.
                        </div>

							<label><br>Access Token: </label> <span id="access_token_show"></span>
							<label>有效期至: </label> <span id="expires_time"></span>
                    </div>

                    <div class="field" id="mobile_push" style="display:none;">
                        <div class="ui label">
                          使将消息推送到您的移动终端, 需要接入互联网服务来接收推送. 目前支持iOS和Android系统, 更多详情请参考移动客户端说明.
                        </div>
                    </div>
                    <button class="ui small blue button" type="submit">保存</button>
                    <button class="ui small basic button" type="reset">取消</button>
                </form>
			</div>
		</div>
	</div>

    <c:import url="foot.jsp"></c:import>

</div>

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/new_action.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
</body>
</html>
