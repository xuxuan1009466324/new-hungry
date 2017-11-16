<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html ng-app="eleme" perf-error="desktop/profile/" class="ng-scope">
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<base href="${ctx}/">

<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">
<title ng-bind="SEO.title" class="ng-binding">个人中心 | 饿了么网上订餐</title>

<link rel="shortcut icon" href="statics/images/favicon-16x16.png" type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png" sizes="96x96">

<!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->

<script src="statics/js/api" data-ref="API_CONFIG"></script>
<script src="statics/js/perf.js" type="text/javascript" crossorigin="anonymous"></script>
<script src="statics/js/vendor.4d50a6.js" type="text/javascript"
	crossorigin="anonymous"></script>
<!-- <script src="statics/js/profile.22e273.js" type="text/javascript"
	crossorigin="anonymous"></script> -->


<link media="all" href="statics/css/personalCenter.css" type="text/css" rel="stylesheet">
</head>
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
		<%@include file="../common/right.jsp" %>
		<div class="sidebar-content">
			<!-- ngInclude: activeTemplate ? ('/common/page/_block/sidebar/sidebar-'+ activeTemplate + '/sidebar-'+ activeTemplate + '.html') : '' -->
		</div>
	</div>
	<!-- ngView:  -->
	<div ng-view="" role="main" class="ng-scope">
		<div class="profile profile-container container" profile-container=""
			page-name="profile" page-title="个人中心" page-title-visible="false">
			<div class="clearfix">
				<div class="location"
					ng-style="{visibility: geohash ? '' : 'hidden'}" role="navigation"
					location="" style="visibility: hidden;">
					<span>当前位置:</span> <span class="location-current"><a
						class="inherit ng-binding" ng-href="/place/" ubt-click="401"
						ng-bind="place.name || place.address" href="#"></a></span> <span
						class="location-change"
						ng-class="{ 'location-hashistory': user.username &amp;&amp; userPlaces &amp;&amp; userPlaces.length > 0 }"><a
						ng-href="/home" ubt-click="400" hardjump="" href="#">[切换地址]</a>
						<ul class="dropbox location-dropbox" ubt-visit="398">
							<li class="arrow"></li>
							<!-- ngRepeat: userPlace in userPlaces | filter:filterPlace | limitTo: 4 -->
							<li class="changelocation"><a ng-href="/home" hardjump=""
								href="#">修改收货地址<span class="icon-location"></span></a></li>
						</ul></span> <span ng-transclude=""><i
						class="icon-arrow-right ng-scope"></i><span
						class="ng-binding ng-scope">个人中心</span></span>
				</div>
				<div search-input=""></div>
			</div>
			<%@include file="../common/left.jsp"%>
			<div class="profile-panel" role="main">
				<!-- ngIf: pageTitleVisible -->
				<div class="profile-panelcontent" ng-transclude="">
					<div class="profile-info ng-scope">
						<div class="profile-infoitem">
							<div class="profile-avatarwrap">
								<img ng-show="avatarUrl"
									ng-src="statics/images/default-avatar.38e40d.png?imageMogr2/thumbnail/112x112"
									alt="45931e099的头像" class="profile-avatar"
									src="statics/images/default-avatar.38e40d.png"> <a href="#"
									class="profile-edit">编辑资料</a>
							</div>
							<div class="profile-perosondata">
								<h3 class="profile-name ng-binding">
									早上好，<strong class="ng-binding">45931e099</strong>
								</h3>
								<p class="profile-tips ng-binding" ng-bind="timeSection.tipText">订餐了吗？提前订餐送的快！</p>
								<p class="profile-security">
									账户安全：<span
										ng-class="{'low': level === 0, 'mid': level === 1, 'high': level ===2 || level ===3}"
										ng-bind="levelText" class="ng-binding high">高</span> <a
										href="#" ng-bind="levelTip" class="ng-binding">查看详情</a>
								</p>
								<p class="profile-othermessage">
									<!-- ngIf: user.is_mobile_valid -->
									<a href="#" class="icon mobile icon-profile-phone ng-scope"
										ng-if="user.is_mobile_valid"></a>
									<!-- end ngIf: user.is_mobile_valid -->
									<!-- ngIf: user.is_email_valid -->
									<!-- ngIf: !user.is_mobile_valid -->
									<!-- ngIf: !user.is_email_valid -->
									<a href="#" class="icon email icon-profile-email none ng-scope"
										ng-if="!user.is_email_valid" tooltip="未绑定邮箱"></a>
									<!-- end ngIf: !user.is_email_valid -->
								</p>
							</div>
						</div>
						<div class="profile-infoitem">
							<a class="inherit" href="#"><p>我的红包</p>
								<p class="profile-infoitem-number hongbao">
									<span class="number ng-binding" ng-bind="hongbaocount">5</span>个
								</p></a>
						</div>
						<div class="profile-infoitem">
							<a class="inherit" href="#"><p>我的金币</p>
								<p class="profile-infoitem-number score">
									<span class="number ng-binding" ng-bind="user.point">5065</span>个
								</p></a>
						</div>
						<div class="profile-infoitem">
							<a class="inherit" href="#"><p>账户余额</p>
								<p class="profile-infoitem-number balance">
									<span class="number ng-binding"
										ng-bind="user.balance| number : 2">0.00</span>元
								</p></a>
						</div>
					</div>
					<div class="profile-order ng-scope">
						<div class="tabnavigation">
							<a class="tabnavigation-navitem active">最近订单</a> <a
								class="tabnavigation-rightitem profile-allorder" href="#">查看全部订单&gt;</a>
						</div>
						<div class="profile-order-content">
							<div class="loading ng-binding ng-isolate-scope ng-hide"
								loading="" content="正在载入最近订单..." ng-show="orderLoading">
								<!-- ngIf: type==='profile' -->
								<img ng-if="type==='profile'" src="statics/images/profile-loading.4984fa.gif"
									alt="正在加载" class="ng-scope">
								<!-- end ngIf: type==='profile' -->
								<!-- ngIf: type==='normal' -->
								正在载入最近订单...
							</div>
							<!-- ngRepeat: order in recentOrder -->
							<div class="orderblock ng-isolate-scope"
								ng-repeat="order in recentOrder" data="{ $order: order }">
								<div class="orderblock-item orderblock-rstinfo clearfix">
									<a class="logo" ng-href="/shop/1851384" href="#"><img
										ng-src="statics/images/e5d3deebc88fdd34429e3365b3735jpeg.jpeg?imageMogr2/thumbnail/70x70"
										alt="商家 LOGO" src="statics/images/e5d3deebc88fdd34429e3365b3735jpeg.jpeg"></a>
									<h3 class="name">
										<a class="inherit ng-binding" ng-bind="order.restaurant_name"
											ng-href="/shop/1851384" href="#">潮州建泓饭店</a>
									</h3>
									<p class="product ng-binding" ng-bind="order.product">酸菜鱼1份
										/ 米饭2份</p>
									<a class="productnum" ng-href="order/id/1213557986281846819"
										href="#">共<i class="count ng-binding"
										ng-bind="order.productnum">3</i>个菜品&gt;
									</a>
								</div>
								<div class="orderblock-item orderblock-time ng-binding">
									17-11-12<br>17:28
								</div>
								<div class="orderblock-item orderblock-price">
									<p class="total ng-binding"
										ng-bind="'¥' + (order.total | number:2)">¥29.00</p>
									<span class="ng-binding">在线支付</span>
								</div>
								<div class="orderblock-item orderblock-status">
									<p class="status ng-binding end"
										ng-class="{'waitpay': (order.realStatus === 4),'end': (order.realStatus === 5)}"
										ng-bind="order.statusText">订单已完成</p>
									<a class="statuslink ng-binding"
										ng-href="order/id/1213557986281846819"
										ng-bind="order.realStatus === 4 ? '立即评价' : '订单详情'" href="#">订单详情</a>
								</div>
							</div>
							<!-- end ngRepeat: order in recentOrder -->
							<div class="orderblock ng-isolate-scope"
								ng-repeat="order in recentOrder" data="{ $order: order }">
								<div class="orderblock-item orderblock-rstinfo clearfix">
									<a class="logo" ng-href="/shop/1851384" href="#"><img
										ng-src="statics/images/e5d3deebc88fdd34429e3365b3735jpeg.jpeg?imageMogr2/thumbnail/70x70"
										alt="商家 LOGO" src="statics/images/e5d3deebc88fdd34429e3365b3735jpeg.jpeg"></a>
									<h3 class="name">
										<a class="inherit ng-binding" ng-bind="order.restaurant_name"
											ng-href="/shop/1851384" href="#">潮州建泓饭店</a>
									</h3>
									<p class="product ng-binding" ng-bind="order.product">西兰花炒肉1份
										/ 韭菜煎蛋1份</p>
									<a class="productnum" ng-href="order/id/1213514005850290211"
										href="#">共<i class="count ng-binding"
										ng-bind="order.productnum">2</i>个菜品&gt;
									</a>
								</div>
								<div class="orderblock-item orderblock-time ng-binding">
									17-11-11<br>18:32
								</div>
								<div class="orderblock-item orderblock-price">
									<p class="total ng-binding"
										ng-bind="'¥' + (order.total | number:2)">¥17.00</p>
									<span class="ng-binding">在线支付</span>
								</div>
								<div class="orderblock-item orderblock-status">
									<p class="status ng-binding end"
										ng-class="{'waitpay': (order.realStatus === 4),'end': (order.realStatus === 5)}"
										ng-bind="order.statusText">订单已完成</p>
									<a class="statuslink ng-binding"
										ng-href="order/id/1213514005850290211"
										ng-bind="order.realStatus === 4 ? '立即评价' : '订单详情'" href="#">订单详情</a>
								</div>
							</div>
							<!-- end ngRepeat: order in recentOrder -->
							<div class="orderblock ng-isolate-scope"
								ng-repeat="order in recentOrder" data="{ $order: order }">
								<div class="orderblock-item orderblock-rstinfo clearfix">
									<a class="logo" ng-href="/shop/1166012" href="#"><img
										ng-src="statics/images/912d60b99f80978b86537ad22261djpeg.jpeg?imageMogr2/thumbnail/70x70"
										alt="商家 LOGO" src="statics/images/912d60b99f80978b86537ad22261djpeg.jpeg"></a>
									<h3 class="name">
										<a class="inherit ng-binding" ng-bind="order.restaurant_name"
											ng-href="/shop/1166012" href="#">德州汉堡（元岗店）</a>
									</h3>
									<p class="product ng-binding" ng-bind="order.product">香辣鸡腿堡+美式鸡肉卷+大可乐1份
										/ 德洲烤鸡-半个1份</p>
									<a class="productnum" ng-href="order/id/1213475101961025629"
										href="#">共<i class="count ng-binding"
										ng-bind="order.productnum">2</i>个菜品&gt;
									</a>
								</div>
								<div class="orderblock-item orderblock-time ng-binding">
									17-11-10<br>22:25
								</div>
								<div class="orderblock-item orderblock-price">
									<p class="total ng-binding"
										ng-bind="'¥' + (order.total | number:2)">¥25.85</p>
									<span class="ng-binding">在线支付</span>
								</div>
								<div class="orderblock-item orderblock-status">
									<p class="status ng-binding end"
										ng-class="{'waitpay': (order.realStatus === 4),'end': (order.realStatus === 5)}"
										ng-bind="order.statusText">订单已完成</p>
									<a class="statuslink ng-binding"
										ng-href="order/id/1213475101961025629"
										ng-bind="order.realStatus === 4 ? '立即评价' : '订单详情'" href="#">订单详情</a>
								</div>
							</div>
							<!-- end ngRepeat: order in recentOrder -->
							<!-- ngIf: !recentOrder.length && !orderLoading -->
						</div>
					</div>
					<div class="profile-footprint ng-scope">
						<div class="tabnavigation">
							<a class="tabnavigation-navitem active">美食足迹</a> <a
								class="tabnavigation-navitem" href="#">我的收藏</a>
							<div
								class="tabnavigation-rightitem ng-scope ng-binding simplepagination ng-hide"
								simplepagination="" pagination-context="restaurantContext"
								ng-show="restaurantContext.data.length">
								1/0 <span class="pre-btn icon-profile-left-arrow disable"
									ng-class="{'disable':currentPage===1}"></span> <span
									class="next-btn icon-profile-right-arrow"
									ng-class="{'disable':currentPage===pageCount}"></span>
							</div>
						</div>
						<div class="footprint-content clearfix">
							<div class="loading ng-binding ng-isolate-scope ng-hide"
								loading="" content="正在载入美食足迹..." ng-show="footDateLoading">
								<!-- ngIf: type==='profile' -->
								<img ng-if="type==='profile'" src="statics/images/profile-loading.4984fa.gif"
									alt="正在加载" class="ng-scope">
								<!-- end ngIf: type==='profile' -->
								<!-- ngIf: type==='normal' -->
								正在载入美食足迹...
							</div>
							<!-- ngRepeat: restaurant in restaurantContext.pageData -->
							<!-- ngIf: !restaurantContext.pageData.length && !footDateLoading -->
							<div class="nodata ng-isolate-scope"
								ng-if="!restaurantContext.pageData.length &amp;&amp; !footDateLoading"
								nodatatip=""
								content="哎呦，未能留下你的美食足迹，快去寻访<a href='/place'>附近的美食</a>吧~">
								<p class="nodata-container ng-binding"
									ng-bind-html="content | toTrusted">
									哎呦，未能留下你的美食足迹，快去寻访<a href="#">附近的美食</a>吧~
								</p>
							</div>
							<!-- end ngIf: !restaurantContext.pageData.length && !footDateLoading -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp" %>
</body>
</html>
