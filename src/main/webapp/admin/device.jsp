<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>设备管理 | Yeelink用户中心</title>
    <link type="text/css" rel="stylesheet" href="resource/css/framework.css" />
    <link type="text/css" rel="stylesheet" href="resource/css/switch.css" />
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

			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large setting icon"></i>
  							<div class="content">
    							设备管理
    							<div class="sub header">管理这个设备及其传感器</div>
  							</div>
						</h3>
					</div>
				</div>
                <!--the device info-->
				<div class="ui device middle aligned vertical grid segment">
                    <div class="four wide column verborder">
                        <div class="ui info segment">
                            <img src="resource/images/avatar-default.gif" style="height:160px;">
                        </div>
                    </div>
                    <div class="seven wide column">
				        <div class="ui info segment">
                            <h5 class="ui header">设备名01 <span class="ui type label">pub</span>
                                    <div class="sub header">
                                        这里是设备描述！
                                    </div>
                            </h5>
				            <p>设备ID： <span class="stress">2343</span></p>
                            <p>设备地址： <a class="externalUrl" href="http://www.yeelink.net/devices/5905" target="_blank">http://www.yeelink.net/devices/5905</a></p>
                            <p>API 地址： http://api.yeelink.net/devices/5905</p>
				        </div>
                    </div>
  					<div class="five wide center aligned column">
                            <a class="ui small green animated button" href="./">
                                <span class="hidden content"><i class="cloud icon"></i></span>
                                <span class="visible content">
                                    <i class="rocket icon"></i>部 署
                                </span>
                            </a>
                            <a class="ui small blue button" href="edit_device.jsp"><i class="edit icon"></i>编 辑</a>
  					</div>
				</div>
                <div class="ui vertical segment">
                    <a class="ui mini red labeled icon button" href="new_sensor.jsp"><i class="add icon"></i>添加传感器</a>
                    <div class="ui mini icon input right">
                      <input type="text" placeholder="输入传感器名搜索……">
                      <i class="search icon"></i>
                   	</div>
                </div>
                <!--the sensor info-->
                <div class="ui middle aligned device vertical grid segment">
                    <div class="eleven wide column">
                        <div class="ui info segment">
                                <h5 class="ui header sprite-icon data">
                                    传感器01 <span class="ui type label">数据型</span>
                                </h5>
								<p>标示ID： <span class="stress">2343</span></p>
                                <p>地址： <a class="externalUrl" href="http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints" target="_blank">http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</a></p>
                            <p>API 地址： http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</p>
				        </div>
                    </div>
                    <div class="five wide center aligned column">
                        <div class="ui top right attached label show chart">
                            <a><i class="chart basic icon"></i>图表</a>
                        </div>
                        <div class="ui data segment">
                              <p class="data">24.4</p>
                              <p class="unit">摄氏度 / °C</p>
                        </div>
                    </div>
                    <div class="ui basic attached accordion action">
                        <a class="sensorEdit" href="edit_sensor.jsp"><i class="edit icon"></i>编辑</a>
                        <a class="sensorEdit"><i class="trash icon"></i>删除</a>
                        <a class="title sensorEdit">
                               <i class="dropdown icon"></i>触发动作
                        </a>
                        <div class="content">
                               <table class="ui basic table">
                                <tr>
                                      <td>当值大于50时，执行动作01</td>
                                      <td><a><i class="edit icon"></i>编辑</a></td>
                                      <td><a><i class="trash icon"></i>删除</a></td>
                                   </tr>
                                <tr>
                                     <td>当值大于60时，执行动作02</td>
                                     <td><a><i class="edit icon"></i>编辑</a></td>
                                     <td><a><i class="trash icon"></i>删除</a></td>
                                 </tr>
                              </table>
                              <div class="ui vertical segment">
                                 <div class="ui red mini addaction button"><i class="add icon"></i>添加触发
                                </div>
                             </div>
                        </div>
                    </div>
                    <div class="chartShow">
                        <div class="ui inverted active dimmer">
                            <div class="content">
                                <div class="center">
                                    <h2 class="ui icon header">
                                        <i class="chart basic icon"></i>
                                    </h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--another sensor-->
               <div class="ui middle aligned device vertical grid segment">
                    <div class="eleven wide column">
                        <div class="ui left corner label error" data-variation="inverted">
                            <div class="text">异常</div>
                        </div>
                        <div class="ui info segment">
                                <h5 class="ui header sprite-icon switchicon">
                                    传感器02 <span class="ui type label">开关型</span>
                                </h5>
								<p>标示ID： <span class="stress">2343</span></p>
                                <p>地址： <a class="externalUrl" href="http://api.yeelink.net/v1.0/device/5675/musensor/10385/datapoints" target="_blank">http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</a></p>
                            <p>API 地址： http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</p>
				        </div>
                    </div>
                    <div class="five wide center aligned column">
                        <div class="ui data segment">
                             	<input type="checkbox" id="switch" checked>
  								<label class="switch" for="switch"></label>
                        </div>
                    </div>
                   <div class="ui basic attached accordion action">
                        <a class="sensorEdit" href="edit_sensor.jsp"><i class="edit icon"></i>编辑</a>
                        <a class="sensorEdit"><i class="trash icon"></i>删除</a>
                   </div>
                </div>

                <!--another sensor-->
               <div class="ui middle aligned device vertical grid segment">
                    <div class="eleven wide column">
                        <div class="ui left corner label error" data-variation="inverted">
                            <div class="text">异常</div>
                        </div>
                        <div class="ui info segment">
                                <h5 class="ui header sprite-icon gps">
                                    传感器03 <span class="ui type label">GPS型</span>
                                </h5>
								<p>标示ID： <span class="stress">2343</span></p>
                                <p>地址： <a class="externalUrl" href="http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints" target="_blank">http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</a></p>
                            <p>API 地址： http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</p>
				        </div>
                    </div>
                    <div class="five wide center aligned column">
                       <div class="ui top right attached label show"><i class="map icon"></i>地图</div>
                        <div class="ui data segment">
                          <p class="gps" title="详细值：36.3332526, 117.3332526">36.33, 117.21</p>
                          <p class="unit">经纬度</p>
                        </div>
                    </div>
                   <div class="ui basic attached accordion action">
                        <a class="sensorEdit" href="edit_sensor.jsp"><i class="edit icon"></i>编辑</a>
                        <a class="sensorEdit"><i class="trash icon"></i>删除</a>
                        <a class="title sensorEdit">
                               <i class="dropdown icon"></i>触发动作
                        </a>
                        <div class="content">
                               <table class="ui basic table">
                                <tr>
                                      <td>当值大于50时，执行动作01</td>
                                      <td><a><i class="edit icon"></i>编辑</a></td>
                                      <td><a><i class="trash icon"></i>删除</a></td>
                                   </tr>
                                <tr>
                                     <td>当值大于60时，执行动作02</td>
                                     <td><a><i class="edit icon"></i>编辑</a></td>
                                     <td><a><i class="trash icon"></i>删除</a></td>
                                 </tr>
                              </table>
                              <div class="ui vertical segment">
                                 <div class="ui red mini addaction button"><i class="add icon"></i>添加触发
                                </div>
                             </div>
                        </div>
                    </div>
                </div>

                 <!--another sensor-->
               <div class="ui middle aligned device vertical grid segment">
                    <div class="eleven wide column">
                        <div class="ui left corner label error" data-variation="inverted">
                            <div class="text">异常</div>
                        </div>
                        <div class="ui info segment">
                                <h5 class="ui header sprite-icon pic">
                                    传感器04 <span class="ui type label">图片型</span>
                                </h5>
								<p>标示ID： <span class="stress">2343</span></p>
                                <p>地址： <a class="externalUrl" href="http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints" target="_blank">http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</a></p>
                            <p>API 地址： http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</p>
				        </div>
                    </div>
                    <div class="five wide center aligned column">
                       <div class="ui top right attached label show"><i class="photos basic icon"></i>全部图片</div>
                        <div class="ui data segment">
                          <img src="resource/images/avatar-default.gif" height="60px" />
                        </div>
                    </div>
                   <div class="ui basic attached accordion action">
                        <a class="sensorEdit" href="edit_sensor.jsp"><i class="edit icon"></i>编辑</a>
                        <a class="sensorEdit"><i class="trash icon"></i>删除</a>
                    </div>
                </div>

                <!--another sensor-->
               <div class="ui middle aligned device vertical grid segment">
                    <div class="eleven wide column">
                        <div class="ui info segment">
                                <h5 class="ui header sprite-icon key">
                                    传感器05 <span class="ui type label">泛传感器型</span>
                                </h5>
								<p>标示ID： <span class="stress">2343</span></p>
                                <p>地址： <a class="externalUrl" href="http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints" target="_blank">http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</a></p>
                            <p>API 地址： http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</p>
				        </div>
                    </div>
                    <div class="five wide center aligned column">
                       <!-- <div class="ui top right attached label show"><a><i class="chart basic icon"></i>图表</a></div>-->
                        <div class="ui data segment">

                        </div>
                    </div>
                   <div class="ui basic attached accordion action">
                        <a class="sensorEdit" href="edit_sensor.jsp"><i class="edit icon"></i>编辑</a>
                        <a class="sensorEdit"><i class="trash icon"></i>删除</a>
                        <a class="title sensorEdit">
                               <i class="dropdown icon"></i>触发动作
                        </a>
                        <div class="content">
                               <table class="ui basic table">
                                <tr>
                                      <td>当值大于50时，执行动作01</td>
                                      <td><a><i class="edit icon"></i>编辑</a></td>
                                      <td><a><i class="trash icon"></i>删除</a></td>
                                 </tr>
                                <tr>
                                     <td>当值大于60时，执行动作02</td>
                                     <td><a><i class="edit icon"></i>编辑</a></td>
                                     <td><a><i class="trash icon"></i>删除</a></td>
                                 </tr>
                              </table>
                              <div class="ui vertical segment">
                                 <div class="ui red mini addaction button"><i class="add icon"></i>添加触发
                                </div>
                             </div>
                        </div>
                    </div>
                </div>

                <!--another sensor-->
               <div class="ui middle aligned device vertical grid segment">
                    <div class="eleven wide column">
                        <div class="ui info segment">
                                <h5 class="ui header sprite-icon bird">
                                    传感器05 <span class="ui type label">微博抓取型</span>
                                </h5>
								<p>标示ID： <span class="stress">2343</span></p>
                                <p>地址： <a class="externalUrl" href="http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints" target="_blank">http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</a></p>
                            <p>API 地址： http://api.yeelink.net/v1.0/device/5675/sensor/10385/datapoints</p>
				        </div>
                    </div>
                    <div class="five wide center aligned column">
                       <!-- <div class="ui top right attached label show"><a><i class="chart basic icon"></i>图表</a></div>-->
                        <div class="ui data segment">
							<p class="data">3</p>
                            <p class="unit">条未读</p>
                        </div>
                    </div>
                   <div class="ui basic attached accordion action">
                        <a class="sensorEdit" href="edit_sensor.jsp"><i class="edit icon"></i>编辑</a>
                        <a class="sensorEdit"><i class="trash icon"></i>删除</a>
                        <a class="title sensorEdit">
                               <i class="dropdown icon"></i>触发动作
                        </a>
                        <div class="content">
                               <table class="ui basic table">
                                <tr>
                                      <td>当值大于50时，执行动作01</td>
                                      <td><a><i class="edit icon"></i>编辑</a></td>
                                      <td><a><i class="trash icon"></i>删除</a></td>
                                   </tr>
                                <tr>
                                     <td>当值大于60时，执行动作02</td>
                                     <td><a><i class="edit icon"></i>编辑</a></td>
                                     <td><a><i class="trash icon"></i>删除</a></td>
                                 </tr>
                              </table>
                              <div class="ui vertical segment">
                                 <div class="ui red mini addaction button"><i class="add icon"></i>添加触发
                                </div>
                             </div>
                        </div>
                    </div>
                </div>

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

<!--addNewDIYAction model-->
<div class="ui small test addNewDIYAction modal">
		<i class="close icon"></i>
		<div class="header">
			一个新的促发动作
		</div>
		<div class="content">
                <div class="ui form vertical segment">
				    <form name="form" method="post">
                        <div class="inline field">
                        	<label>当数据满足:</label>
                            <div class="ui dropdown selection">
                                <input type="hidden" name="gender" value="1">
                                <div class="default text"> 大于 </div>
                                <i class="dropdown icon"></i>
                                <div class="menu">
                                    <div class="item" data-value="大于" value="1"> 大于 </div>
                                    <div class="item" data-value="大于或等于 " value="2"> 大于或等于 </div>
                                    <div class="item" data-value="小于" value="3"> 小于 </div>
                                    <div class="item" data-value="小于或等于" value="4"> 小于或等于 </div>
                                    <div class="item" data-value="等于" value="5"> 等于 </div>
                                </div>
                            </div>
                            <input type="text" >
                        </div>
                        <div class="inline field">
                        	<label>指定动作：</label>
                            <div class="ui dropdown selection">
                                <input type="hidden" name="gender" value="1">
                                <div class="default text"> 示例动作01 </div>
                                <i class="dropdown icon"></i>
                                <div class="menu">
                                    <div class="item" data-value="示例动作01" value="1"> 示例动作01 </div>
                                    <div class="item" data-value="示例动作02" value="2"> 示例动作02 </div>
                                    <div class="item" data-value="示例动作01" value="3"> 示例动作03 </div>
                                </div>
                            </div>
                            <div class="ui pointing left label">
                             	可在 设备动作 中添加新动作.
                            </div>
                        </div>
                        <div class="inline field">
                        	<label>消息内容:</label>
                            <textarea placeholder="不超过120个字……"></textarea>
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
    $(document).ready(function(){
		$('.ui.dropdown')
			.dropdown()
        ;

        $('.ui.accordion')
        .accordion()
        ;

        $('.show a').click(function(){
            $('.show.chart').toggleClass('active');
            $('.chartShow').toggleClass('active');
        });

        $('.test.addNewDIYAction.modal')
		.modal('attach events','.addaction.button','show');
	});
</script>
</body>
</html>
