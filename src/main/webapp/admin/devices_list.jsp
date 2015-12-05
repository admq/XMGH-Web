<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="renderer" content="webkit">
    <title>我的设备 | Yeelink用户中心</title>
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
  						<a class="active teal item" href="devices_list.jsp">
    						<i class="settings icon"></i> 我的设备
  						</a>
  						<a class="item" href="actions.jsp">
							<i class="terminal icon"></i> 设备动作
  						</a>
					</div>
				</div>
			</div>
			<!--the Devicelist-->
			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large settings icon"></i>
  							<div class="content">
    							我的设备
    							<div class="sub header">所有设备都在这里</div>
  							</div>
						</h3>
					</div>
				</div>
                <div class="ui vertical segment">
					<a class="ui red small labeled icon add button" href="add.jsp"><i class="add icon"></i>添加新设备</a>
                    <div class="ui small icon input right">
                      <input type="text" placeholder="输入设备名搜索……">
                      <i class="search icon"></i>
                    </div>
				</div>
                <!--the device content-->
				<div class="ui device two column middle aligned vertical grid segment">
                    <div class="column verborder">
							<div class="ui info segment">
                                <h5 class="ui header">设备名01 <span class="ui type label">pub</span>
                                </h5>
								<p>设备ID： <span class="stress">2343</span></p>
                                <p>设备地址： <a class="externalUrl" href="http://www.yeelink.net/devices/5905" target="_blank">http://www.yeelink.net/devices/5905</a></p>
                            <p>API 地址： http://api.yeelink.net/devices/5905</p>
                                <p class="sensorStatus">传感器状态：
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui red error label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                </p>
							</div>
                    </div>
  					<div class="center aligned column">
    					<div class="ui buttons">
							<a class="ui tiny green button"><i class="rocket icon"></i>部 署</a>
  							<a class="ui tiny blue button" href="device.jsp"><i class="setting icon"></i>管 理</a>
                            <a class="ui tiny basic button"><i class="trash icon"></i>删 除</a>
						</div>
  					</div>
				</div>
                <!--another device content-->
                <div class="ui two column device middle aligned vertical grid segment">
                    <div class="column verborder">
							<div class="ui info segment">
                                <h5 class="ui header">设备名01 <span class="ui type label">pub</span>
                                </h5>
								<p>设备ID： <span class="stress">2343</span></p>
                                <p>设备地址： <a class="externalUrl" href="http://www.yeelink.net/devices/5905" target="_blank">http://www.yeelink.net/devices/5905</a></p>
                            <p>API 地址： http://api.yeelink.net/devices/5905</p>
                                <p class="sensorStatus">传感器状态：
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui red error label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                </p>
							</div>
                    </div>
  					<div class="center aligned column">
    					<div class="ui buttons">
                            <a class="ui tiny green button"><i class="rocket icon"></i>部 署</a>
  							<a class="ui tiny blue button" href="device.jsp"><i class="setting icon"></i>管 理</a>
							<a class="ui tiny basic button"><i class="trash icon"></i>删 除</a>
						</div>
  					</div>
				</div>
                <!--another device content-->
                <div class="ui two column device middle aligned vertical grid segment">
                    <div class="column verborder">
							<div class="ui info segment">
                                <h5 class="ui header">设备名01 <span class="ui type label">pub</span>
                                </h5>
								<p>设备ID： <span class="stress">2343</span></p>
                                <p>设备地址： <a class="externalUrl" href="http://www.yeelink.net/devices/5905" target="_blank">http://www.yeelink.net/devices/5905</a></p>
                            <p>API 地址： http://api.yeelink.net/devices/5905</p>
                                <p class="sensorStatus">传感器状态：
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui red error label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                    <span class="ui green ok label" data-variation="inverted"></span>
                                </p>
							</div>
                    </div>
  					<div class="center aligned column">
    					<div class="ui buttons">
                            <a class="ui tiny green button"><i class="rocket icon"></i>部 署</a>
  							<a class="ui tiny blue button" href="device.jsp"><i class="setting icon"></i>管 理</a>
							<a class="ui tiny basic button"><i class="trash icon"></i>删 除</a>
						</div>
  					</div>
				</div>
            	<!--Pagination-->
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

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
<script>
    $(document).ready(function(){
		$('.ui.dropdown')
			.dropdown()
        ;

        $('.ok.label')
        .popup({
            content:'这个传感器正常工作。'
        })
        ;

        $('.error.label')
        .popup({
            content:'哎呀，这个传感器异常。'
        })
        ;
	});
</script>
</body>
</html>
