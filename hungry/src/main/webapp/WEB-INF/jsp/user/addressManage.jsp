<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="eleme" perf-error="desktop/profile/" class="ng-scope">
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<base href="${ctx}/">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">

<title ng-bind="SEO.title" class="ng-binding">个人中心_地址管理 |
	饿了吧网上订餐</title>

<link rel="shortcut icon" href="statics/images/favicon-16x16.png"
	type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png"
	type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png"
	type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png"
	sizes="96x96">

<!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->

<link media="all" href="statics/css/addressManage.css" type="text/css"
	rel="stylesheet">
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
		<%@include file="../common/right.jsp"%>
		<div class="sidebar-content">
			<!-- ngInclude: activeTemplate ? ('/common/page/_block/sidebar/sidebar-'+ activeTemplate + '/sidebar-'+ activeTemplate + '.html') : '' -->
		</div>
	</div>
	<!-- ngView:  -->
	<div ng-view="" role="main" class="ng-scope">
		<div class="profile-container container" profile-container=""
			page-name="address" page-title="地址管理">
			<div class="clearfix">
				<div class="location"
					ng-style="{visibility: geohash ? '' : 'hidden'}" role="navigation"
					location="">
					<span>当前位置:</span> <span class="location-current"><a
						class="inherit ng-binding" ng-href="/place/ws0egs6hts4"
						ubt-click="401" ng-bind="place.name || place.address" href="#">天河区教师新村(天源路南)</a></span>
					<span class="location-change"
						ng-class="{ 'location-hashistory': user.username &amp;&amp; userPlaces &amp;&amp; userPlaces.length > 0 }"><a
						ng-href="/home" ubt-click="400" hardjump="" href="selectAddress.jsp">[切换地址]</a>
						<ul class="dropbox location-dropbox" ubt-visit="398">
							<li class="arrow"></li>
							<!-- ngRepeat: userPlace in userPlaces | filter:filterPlace | limitTo: 4 -->
							<li class="changelocation"><a ng-href="/home" hardjump=""
								href="#">修改收货地址<span class="icon-location"></span></a></li>
						</ul></span> <span ng-transclude=""><i
						class="icon-arrow-right ng-scope"></i><span
						class="ng-binding ng-scope">地址管理</span></span>
				</div>
				<div search-input=""></div>
			</div>
			<%@include file="../common/left.jsp"%>
			<div class="profile-panel" role="main">
				<!-- ngIf: pageTitleVisible -->
				<h3 ng-if="pageTitleVisible" class="profile-paneltitle ng-scope">
					<span ng-bind="pageTitle" class="ng-binding">地址管理</span> <span
						class="subtitle ng-binding"
						ng-bind-html="pageSubtitle | toTrusted"></span>
				</h3>
				<!-- end ngIf: pageTitleVisible -->
				<div class="profile-panelcontent" ng-transclude="">
					<div class="loading ng-binding ng-isolate-scope ng-hide" loading=""
						content="正在载入地址..." ng-show="addressLoading">
						<!-- ngIf: type==='profile' -->
						<img ng-if="type==='profile'"
							src="statics/images/profile-loading.4984fa.gif" alt="正在加载"
							class="ng-scope">
						<!-- end ngIf: type==='profile' -->
						<!-- ngIf: type==='normal' -->
						正在载入地址...
					</div>
					<div class="desktop-addresslist clearfix ng-scope"
						ng-hide="addressLoading">
						<!-- ngRepeat: address in userAddresses -->
						<div class="desktop-addressblock ng-scope"
							ng-repeat="address in userAddresses">
							<div class="desktop-addressblock-buttons">
								<button class="desktop-addressblock-button"
									ng-click="editAddress(address)">修改</button>
								<button class="desktop-addressblock-button"
									ng-click="showMask = true">删除</button>
							</div>
							<div class="desktop-addressblock-name ng-binding">
								季岚月 <span class="ng-binding">小姐</span>
							</div>
							<div class="desktop-addressblock-address ng-binding"
								ng-bind="address.address + ' ' + address.address_detail">北大青鸟广州钰涛软件学院
								源路793号 维也纳酒店五楼。</div>
							<div class="desktop-addressblock-mobile ng-binding"
								ng-bind="address.phone">189****7761</div>
							<div class="desktop-addressblock-mask ng-hide" ng-show="showMask"></div>
							<!-- ngIf: !address.st_geohash || !address.address -->
							<div class="desktop-addressblock-removebuttons ng-hide"
								ng-show="showMask">
								<p>确定删除收货地址?</p>
								<button class="confirmdelete" ng-click="removeAddress(address)">确定</button>
								<button class="canceldelete" ng-click="showMask = false">取消</button>
							</div>
						</div>
						<!-- end ngRepeat: address in userAddresses -->
						<div class="desktop-addressblock ng-scope"
							ng-repeat="address in userAddresses">
							<div class="desktop-addressblock-buttons">
								<button class="desktop-addressblock-button"
									ng-click="editAddress(address)">修改</button>
								<button class="desktop-addressblock-button"
									ng-click="showMask = true">删除</button>
							</div>
							<div class="desktop-addressblock-name ng-binding">
								季岚月 <span class="ng-binding">小姐</span>
							</div>
							<div class="desktop-addressblock-address ng-binding"
								ng-bind="address.address + ' ' + address.address_detail">三宝墟教职工新村
								天源路三保墟教职工新村 F栋A梯(1034栋)802号房</div>
							<div class="desktop-addressblock-mobile ng-binding"
								ng-bind="address.phone">189****7761</div>
							<div class="desktop-addressblock-mask ng-hide" ng-show="showMask"></div>
							<!-- ngIf: !address.st_geohash || !address.address -->
							<div class="desktop-addressblock-removebuttons ng-hide"
								ng-show="showMask">
								<p>确定删除收货地址?</p>
								<button class="confirmdelete" ng-click="removeAddress(address)">确定</button>
								<button class="canceldelete" ng-click="showMask = false">取消</button>
							</div>
						</div>
						<!-- end ngRepeat: address in userAddresses -->
						<button class="desktop-addressblock desktop-addressblock-addblock"
							ng-click="addAddress()">
							<i class="icon-plus"></i>添加新地址
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
</body>
</html>
