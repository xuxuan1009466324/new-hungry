<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html ng-app="eleme" perf-error="desktop/profile/" class="ng-scope">
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<base href="${ctx}/">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">
<title ng-bind="SEO.title" class="ng-binding">个人中心 | 饿了么网上订餐</title>

<link rel="shortcut icon" href="statics/images/favicon-16x16.png"
	type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png"
	sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png"
	sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png"
	sizes="96x96">

<!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->


<link media="all" href="statics/css/order.css" type="text/css" rel="stylesheet">
</head>
<base href="${pageContext.request.contextPath }/" />
<body cute-title=""
	ng-class="{hidesidebar: layoutState &amp;&amp; layoutState.hideSidebar, smallbody: layoutState.smallBody, whitebody: layoutState.whiteBody}"
	style="position: relative;">

	<div ng-switch="state.type" state="layoutState"
		class="ng-isolate-scope">
		<!-- ngSwitchWhen: checkout -->
		<!-- ngSwitchDefault:  -->
		<div ng-switch-default="" topbar-default="" state="state"
			class="ng-scope ng-isolate-scope">
			<%@include file="../common/header.jsp"%>
		</div>
	</div>
	<div class="importantnotification container" role="banner">
		<!-- ngIf: enable -->
	</div>
	<div class="sidebar" role="complementary"
		ng-hide="layoutState &amp;&amp; layoutState.hideSidebar">
		<%@include file="../common/right.jsp"%>
		<div class="sidebar-content">
			<!-- ngInclude: activeTemplate ? ('/common/page/_block/sidebar/sidebar-'+ activeTemplate + '/sidebar-'+ activeTemplate + '.html') : '' -->
		</div>
	</div>
	<!-- ngView:  -->
	<div ng-view="" role="main" class="ng-scope">
		<div class="profile-container container" profile-container=""
			page-name="order" page-title="近三个月订单">
			<div class="clearfix">
				<div class="location"
					ng-style="{visibility: geohash ? '' : 'hidden'}" role="navigation"
					location="">
					<span>当前位置:</span> <span class="location-current"><a
						class="inherit ng-binding" ng-href="/place/ws0egs6hts4"
						ubt-click="401" ng-bind="place.name || place.address"
						href="https://www.ele.me/place/ws0egs6hts4">天河区教师新村(天源路南)</a></span> <span
						class="location-change"
						ng-class="{ 'location-hashistory': user.username &amp;&amp; userPlaces &amp;&amp; userPlaces.length > 0 }"><a
						ng-href="/home" ubt-click="400" hardjump=""
						href="https://www.ele.me/home">[切换地址]</a>
					<ul class="dropbox location-dropbox" ubt-visit="398">
							<li class="arrow"></li>
							<!-- ngRepeat: userPlace in userPlaces | filter:filterPlace | limitTo: 4 -->
							<li class="changelocation"><a ng-href="/home" hardjump=""
								href="https://www.ele.me/home">修改收货地址<span
									class="icon-location"></span></a></li>
						</ul></span> <span ng-transclude=""><i
						class="icon-arrow-right ng-scope"></i><span
						class="ng-binding ng-scope">近三个月订单</span></span>
				</div>
				<div search-input=""></div>
			</div>
			<%@include file="../common/left.jsp"%>
			<div class="profile-panel" role="main">
				<!-- ngIf: pageTitleVisible -->
				<h3 ng-if="pageTitleVisible" class="profile-paneltitle ng-scope">
					<span ng-bind="pageTitle" class="ng-binding">近三个月订单</span> <span
						class="subtitle ng-binding"
						ng-bind-html="pageSubtitle | toTrusted"></span>
				</h3>
				<!-- end ngIf: pageTitleVisible -->
				<div class="profile-panelcontent" ng-transclude="">
					<div class="order-fetchtakeout ng-scope ng-isolate-scope"
						show-fetch-takeout-dialog="">
						<img src="statics/images/takeout.408a87.png">
					</div>
					<div class="order-extra ng-scope">
						<a href="https://www.ele.me/support/question/hotissue"
							target="_top">热门问题</a> <a
							href="https://static11.elemecdn.com/eleme/desktop/mobile/index.html"
							target="_top">随时关注订单状态</a>
					</div>
					<div class="loading ng-binding ng-isolate-scope ng-hide" loading=""
						ng-show="!orderList">
						<!-- ngIf: type==='profile' -->
						<img ng-if="type==='profile'" src="statics/images/profile-loading.4984fa.gif"
							alt="正在加载" class="ng-scope">
						<!-- end ngIf: type==='profile' -->
						<!-- ngIf: type==='normal' -->
						正在载入数据...
					</div>
					<div class="order-nocontent nodata ng-isolate-scope ng-hide"
						ng-show="orderList &amp;&amp; !orderList.length" nodatatip=""
						content="暂无记录，现在就去<a href='/place'>订餐</a>吧!">
						<p class="nodata-container ng-binding"
							ng-bind-html="content | toTrusted">
							暂无记录，现在就去<a href="https://www.ele.me/place">订餐</a>吧!
						</p>
					</div>
					<table class="order-list ng-scope" ng-show="orderList.length">
						<thead>
							<tr>
								<th>下单时间</th>
								<th class="order-list-infoth">订单内容</th>
								<th></th>
								<th>支付金额（元）</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr></tr>
							<!-- ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">11-04</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">20:05</p>
									<!-- ngIf: item.realStatus !== 5 -->
									<i
									class="ordertimeline-time-icon icon-uniE65D ng-scope unreview"
									ng-if="item.realStatus !== 5"
									ng-class="{'unfinish': item.realStatus !== 4, 'unreview': item.realStatus === 4}"></i>
								<!-- end ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a ng-href="/shop/1861876"
									href="https://www.ele.me/shop/1861876"><img
										ng-src="//fuss10.elemecdn.com/5/0e/f238825d29ecfab70c53e66e7c286png.png?imageMogr2/thumbnail/70x70"
										src="statics/images/f238825d29ecfab70c53e66e7c286png.png"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/1861876" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/1861876">斯维乐炸鸡汉堡（元岗店）</a>
										<!-- ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/1213229198993975469"
											href="https://www.ele.me/profile/order/id/1213229198993975469"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">蜜汁手扒鸡2份</span>
											<!-- ngIf: item.productnamenum > 2 --> <span
											class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">2</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/1213229198993975469"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/1213229198993975469">1213229198993975469</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">24.00</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding">等待评价</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText">评价获取240金币</p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/1213229198993975469"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<span ng-if="item.realStatus === 4"
									class="ordertimeline-handle-group ng-scope"><a
										ng-href="order/rate/1213229198993975469"
										href="https://www.ele.me/profile/order/rate/1213229198993975469">评价订单
											<i class="icon-arrow-down"></i>
									</a> <a href="javascript:" ng-click="bundle.restore(item)">再来一份</a></span>
								<!-- end ngIf: item.realStatus === 4 --> <!-- ngIf: item.realStatus === 5 -->
									<!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">11-04</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">11:20</p>
									<!-- ngIf: item.realStatus !== 5 -->
									<i
									class="ordertimeline-time-icon icon-uniE65D ng-scope unreview"
									ng-if="item.realStatus !== 5"
									ng-class="{'unfinish': item.realStatus !== 4, 'unreview': item.realStatus === 4}"></i>
								<!-- end ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a ng-href="/shop/843301"
									href="https://www.ele.me/shop/843301"><img
										ng-src="//fuss10.elemecdn.com/f/48/b5acb2fa1104cb0755ecfd23f1a30jpeg.jpeg?imageMogr2/thumbnail/70x70"
										src="statics/images/b5acb2fa1104cb0755ecfd23f1a30jpeg.jpeg"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/843301" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/843301">蒸饭香</a>
										<!-- ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/1213199089192855639"
											href="https://www.ele.me/profile/order/id/1213199089192855639"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">豉汁排骨+香菇鸡腿肉饭-不加小食1份
												/ 奥尔良鸡腿扒+连心脆骨饭-不加小食1份</span> <!-- ngIf: item.productnamenum > 2 -->
											<span class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">2</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/1213199089192855639"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/1213199089192855639">1213199089192855639</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">21.96</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding">等待评价</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText">评价获取219金币</p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/1213199089192855639"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<span ng-if="item.realStatus === 4"
									class="ordertimeline-handle-group ng-scope"><a
										ng-href="order/rate/1213199089192855639"
										href="https://www.ele.me/profile/order/rate/1213199089192855639">评价订单
											<i class="icon-arrow-down"></i>
									</a> <a href="javascript:" ng-click="bundle.restore(item)">再来一份</a></span>
								<!-- end ngIf: item.realStatus === 4 --> <!-- ngIf: item.realStatus === 5 -->
									<!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">10-29</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">16:07</p>
									<!-- ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 -->
									<i class="ordertimeline-time-icon icon-uniE65E finish ng-scope"
									ng-if="item.realStatus === 5"></i>
								<!-- end ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a
									ng-href="/shop/157432144"
									href="https://www.ele.me/shop/157432144"><img
										ng-src="//fuss10.elemecdn.com/e/d6/b621459e1201a933925b7264f2d69jpeg.jpeg?imageMogr2/thumbnail/70x70"
										src="statics/images/b621459e1201a933925b7264f2d69jpeg.jpeg"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/157432144" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/157432144">沙锅麻辣烫(长湴店)</a>
										<!-- ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/1212986059695777813"
											href="https://www.ele.me/profile/order/id/1212986059695777813"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">冬瓜1份
												/ 热狗1份</span> <!-- ngIf: item.productnamenum > 2 -->
											<span ng-if="item.productnamenum > 2" class="ng-scope">等</span>
										<!-- end ngIf: item.productnamenum > 2 --> <span
											class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">15</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/1212986059695777813"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/1212986059695777813">1212986059695777813</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">23.31</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding end">订单已完成</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText"></p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/1212986059695777813"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<!-- ngIf: item.realStatus === 5 -->
									<a ng-if="item.realStatus === 5"
									class="ordertimeline-handle-a ng-scope" href="javascript:"
									ng-click="bundle.restore(item)">再来一份</a>
								<!-- end ngIf: item.realStatus === 5 --> <!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">10-28</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">17:18</p>
									<!-- ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 -->
									<i class="ordertimeline-time-icon icon-uniE65E finish ng-scope"
									ng-if="item.realStatus === 5"></i>
								<!-- end ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a ng-href="/shop/100923"
									href="https://www.ele.me/shop/100923"><img
										ng-src="//fuss10.elemecdn.com/c/1c/848899fd5c0dd7645d91762b8850ajpeg.jpeg?imageMogr2/thumbnail/70x70"
										src="statics/images/848899fd5c0dd7645d91762b8850ajpeg.jpeg"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/100923" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/100923">潮汕汤粉王</a>
										<!-- ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/1212944632009910314"
											href="https://www.ele.me/profile/order/id/1212944632009910314"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">特色猪杂玉米汤饭1份
												/ 瘦肉拼墨鱼丸1份</span> <!-- ngIf: item.productnamenum > 2 --> <span
											class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">2</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/1212944632009910314"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/1212944632009910314">1212944632009910314</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">16.00</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding end">订单已完成</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText"></p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/1212944632009910314"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<!-- ngIf: item.realStatus === 5 -->
									<a ng-if="item.realStatus === 5"
									class="ordertimeline-handle-a ng-scope" href="javascript:"
									ng-click="bundle.restore(item)">再来一份</a>
								<!-- end ngIf: item.realStatus === 5 --> <!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">10-24</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">11:22</p>
									<!-- ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 -->
									<i class="ordertimeline-time-icon icon-uniE65E finish ng-scope"
									ng-if="item.realStatus === 5"></i>
								<!-- end ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a ng-href="/shop/1851384"
									href="https://www.ele.me/shop/1851384"><img
										ng-src="//fuss10.elemecdn.com/b/33/e5d3deebc88fdd34429e3365b3735jpeg.jpeg?imageMogr2/thumbnail/70x70"
										src="statics/images/e5d3deebc88fdd34429e3365b3735jpeg.jpeg"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/1851384" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/1851384">潮州建泓饭店</a>
										<!-- ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/1212770886364096547"
											href="https://www.ele.me/profile/order/id/1212770886364096547"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">铁板茄子1份
												/ 韭菜炒蛋1份</span> <!-- ngIf: item.productnamenum > 2 -->
											<span ng-if="item.productnamenum > 2" class="ng-scope">等</span>
										<!-- end ngIf: item.productnamenum > 2 --> <span
											class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">4</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/1212770886364096547"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/1212770886364096547">1212770886364096547</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">30.00</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding end">订单已完成</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText"></p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/1212770886364096547"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<!-- ngIf: item.realStatus === 5 -->
									<a ng-if="item.realStatus === 5"
									class="ordertimeline-handle-a ng-scope" href="javascript:"
									ng-click="bundle.restore(item)">再来一份</a>
								<!-- end ngIf: item.realStatus === 5 --> <!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">10-23</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">11:17</p>
									<!-- ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 -->
									<i class="ordertimeline-time-icon icon-uniE65E finish ng-scope"
									ng-if="item.realStatus === 5"></i>
								<!-- end ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a ng-href="/shop/1953527"
									href="https://www.ele.me/shop/1953527"><img
										ng-src="//fuss10.elemecdn.com/f/2e/9b25b816577ebe221737d97eee549png.png?imageMogr2/thumbnail/70x70"
										src="statics/images/9b25b816577ebe221737d97eee549png.png"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/1953527" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/1953527">台湾炒饭大王</a>
										<!-- ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/1212732430929815597"
											href="https://www.ele.me/profile/order/id/1212732430929815597"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">美味韩国烤肉排+肉饼+热狗培根+清凉茶1份</span>
											<!-- ngIf: item.productnamenum > 2 --> <span
											class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">1</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/1212732430929815597"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/1212732430929815597">1212732430929815597</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">11.50</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding end">订单已完成</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText"></p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/1212732430929815597"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<!-- ngIf: item.realStatus === 5 -->
									<a ng-if="item.realStatus === 5"
									class="ordertimeline-handle-a ng-scope" href="javascript:"
									ng-click="bundle.restore(item)">再来一份</a>
								<!-- end ngIf: item.realStatus === 5 --> <!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">10-22</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">18:09</p>
									<!-- ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 -->
									<i class="ordertimeline-time-icon icon-uniE65E finish ng-scope"
									ng-if="item.realStatus === 5"></i>
								<!-- end ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a ng-href="/shop/1953527"
									href="https://www.ele.me/shop/1953527"><img
										ng-src="//fuss10.elemecdn.com/f/2e/9b25b816577ebe221737d97eee549png.png?imageMogr2/thumbnail/70x70"
										src="statics/images/9b25b816577ebe221737d97eee549png.png"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/1953527" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/1953527">台湾炒饭大王</a>
										<!-- ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/1212714167084705837"
											href="https://www.ele.me/profile/order/id/1212714167084705837"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">君临天下奥尔良鸡肉炒饭+培根热狗+菊花茶1份</span>
											<!-- ngIf: item.productnamenum > 2 --> <span
											class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">1</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/1212714167084705837"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/1212714167084705837">1212714167084705837</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">10.50</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding end">订单已完成</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText"></p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/1212714167084705837"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<!-- ngIf: item.realStatus === 5 -->
									<a ng-if="item.realStatus === 5"
									class="ordertimeline-handle-a ng-scope" href="javascript:"
									ng-click="bundle.restore(item)">再来一份</a>
								<!-- end ngIf: item.realStatus === 5 --> <!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">10-22</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">11:13</p>
									<!-- ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 -->
									<i class="ordertimeline-time-icon icon-uniE65E finish ng-scope"
									ng-if="item.realStatus === 5"></i>
								<!-- end ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a ng-href="/shop/804896"
									href="https://www.ele.me/shop/804896"><img
										ng-src="//fuss10.elemecdn.com/d/24/0f5debb9cf74dd8b46b8fee1e9019jpeg.jpeg?imageMogr2/thumbnail/70x70"
										src="statics/images/0f5debb9cf74dd8b46b8fee1e9019jpeg.jpeg"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/804896" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/804896">尚品味汉堡炸鸡(下元岗店)</a>
										<!-- ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/1212688529569278182"
											href="https://www.ele.me/profile/order/id/1212688529569278182"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">蜜汁烤鸡1份
												/ 冰爽柠檬茶-中杯2份</span> <!-- ngIf: item.productnamenum > 2 -->
											<span ng-if="item.productnamenum > 2" class="ng-scope">等</span>
										<!-- end ngIf: item.productnamenum > 2 --> <span
											class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">4</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/1212688529569278182"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/1212688529569278182">1212688529569278182</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">33.99</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding end">订单已完成</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText"></p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/1212688529569278182"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<!-- ngIf: item.realStatus === 5 -->
									<a ng-if="item.realStatus === 5"
									class="ordertimeline-handle-a ng-scope" href="javascript:"
									ng-click="bundle.restore(item)">再来一份</a>
								<!-- end ngIf: item.realStatus === 5 --> <!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">10-17</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">16:23</p>
									<!-- ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 -->
									<i class="ordertimeline-time-icon icon-uniE65E finish ng-scope"
									ng-if="item.realStatus === 5"></i>
								<!-- end ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a
									ng-href="/shop/157058551"
									href="https://www.ele.me/shop/157058551"><img
										ng-src="//fuss10.elemecdn.com/d/d3/7ab83b7da25d646bbad20f5c9d5d5jpeg.jpeg?imageMogr2/thumbnail/70x70"
										src="statics/images/7ab83b7da25d646bbad20f5c9d5d5jpeg.jpeg"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/157058551" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/157058551">煮提便当</a>
										<!-- ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/3014140440072611980"
											href="https://www.ele.me/profile/order/id/3014140440072611980"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">迈阿密烤肉饭-孜然1份</span>
											<!-- ngIf: item.productnamenum > 2 --> <span
											class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">1</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/3014140440072611980"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/3014140440072611980">3014140440072611980</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">10.40</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding end">订单已取消</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText"></p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/3014140440072611980"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<!-- ngIf: item.realStatus === 5 -->
									<a ng-if="item.realStatus === 5"
									class="ordertimeline-handle-a ng-scope" href="javascript:"
									ng-click="bundle.restore(item)">再来一份</a>
								<!-- end ngIf: item.realStatus === 5 --> <!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
							<tr class="timeline" order-timeline=""
								ng-repeat="item in orderList">
								<td class="ordertimeline-time"><p
										class="ordertimeline-title ng-binding"
										ng-bind="item.created_at | parseDate">10-17</p>
									<p ng-bind="item.created_at | date:'HH:mm'" class="ng-binding">16:21</p>
									<!-- ngIf: item.realStatus !== 5 --> <!-- ngIf: item.realStatus === 5 -->
									<i class="ordertimeline-time-icon icon-uniE65E finish ng-scope"
									ng-if="item.realStatus === 5"></i>
								<!-- end ngIf: item.realStatus === 5 --></td>
								<td class="ordertimeline-avatar"><a
									ng-href="/shop/157058551"
									href="https://www.ele.me/shop/157058551"><img
										ng-src="//fuss10.elemecdn.com/d/d3/7ab83b7da25d646bbad20f5c9d5d5jpeg.jpeg?imageMogr2/thumbnail/70x70"
										src="statics/images/7ab83b7da25d646bbad20f5c9d5d5jpeg.jpeg"></a></td>
								<td class="ordertimeline-info"><h3
										class="ordertimeline-title">
										<a ng-href="/shop/157058551" ng-bind="item.restaurant.name"
											class="ng-binding" href="https://www.ele.me/shop/157058551">煮提便当</a>
										<!-- ngIf: item.is_book -->
										<span class="ordertimeline-book ng-binding ng-scope"
											ng-if="item.is_book"
											ng-bind="item.deliver_time | date: 'HH:mm'">17:30</span>
										<!-- end ngIf: item.is_book -->
									</h3>
									<p class="ordertimeline-info-food">
										<a ng-href="order/id/3014140411551344780"
											href="https://www.ele.me/profile/order/id/3014140411551344780"><span
											class="ordertimeline-food ng-binding" ng-bind="item.product">迈阿密烤肉饭-孜然1份</span>
											<!-- ngIf: item.productnamenum > 2 --> <span
											class="ordertimeline-info-productnum ng-binding"
											ng-bind="item.productnum">1</span> <span>个菜品</span></a>
									</p>
									<p>
										订单号: <a ng-href="order/id/3014140411551344780"
											ng-bind="item.unique_id" class="ng-binding"
											href="https://www.ele.me/profile/order/id/3014140411551344780">3014140411551344780</a>
									</p></td>
								<td class="ordertimeline-amount"><h3
										class="ordertimeline-title ordertimeline-price ui-arial ng-binding"
										ng-bind="item.total_amount.toFixed(2)">10.40</h3>
									<p ng-bind="item.is_online_paid ? '在线支付' : '货到付款'"
										class="ng-binding">在线支付</p></td>
								<td class="ordertimeline-status"><h3
										ng-bind="item.statusText"
										ng-class="{'waitpay': (item.realStatus === 1), 'end': (item.realStatus === 5)}"
										class="ng-binding end">订单已取消</h3>
									<p
										class="ordertimeline-status-time ng-binding ordertimeline-status-warning"
										ng-class="{'ordertimeline-status-warning' : item.realStatus !== 1}"
										ng-bind="statusText"></p></td>
								<td class="ordertimeline-handle"><a
									class="ordertimeline-handle-detail"
									ng-href="order/id/3014140411551344780"
									href="orderDetails.jsp">订单详情</a>
									<!-- ngIf: item.realStatus === 1 --> <!-- ngIf: item.realStatus === 2 -->
									<!-- ngIf: item.realStatus === 3 --> <!-- ngIf: item.realStatus === 4 -->
									<!-- ngIf: item.realStatus === 5 -->
									<a ng-if="item.realStatus === 5"
									class="ordertimeline-handle-a ng-scope" href="javascript:"
									ng-click="bundle.restore(item)">再来一份</a>
								<!-- end ngIf: item.realStatus === 5 --> <!-- ngIf: item.realStatus === 6 --></td>
							</tr>
							<!-- end ngRepeat: item in orderList -->
						</tbody>
					</table>
					<div pagination="order" pagination-context="pageContext"
						pagination-onchange="onOrderPageChange()"
						class="ng-scope pagination">
						<ul>
							<li class="current">1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							<li>5</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
</body>
</html>
