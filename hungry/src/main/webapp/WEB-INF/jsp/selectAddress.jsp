<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="eleme" perf-error="desktop/home/" class="ng-scope">
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<base href="${ctx}/">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">

<title ng-bind="SEO.title" class="ng-binding">饿了么-网上订餐_外卖_饿了么订餐官网</title>

<link rel="shortcut icon" href="statics/images/favicon-16x16.png"
	type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png"
	sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png"
	sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png"
	sizes="96x96">

<!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->

<script src="statics/js/api" data-ref="API_CONFIG"></script>
<script src="statics/js/perf.js" type="text/javascript" crossorigin="anonymous"></script>
<script src="statics/js/vendor.4d50a6.js" type="text/javascript"
	crossorigin="anonymous"></script>
<!-- <script src="statics/js/home.880477.js" type="text/javascript"
	crossorigin="anonymous"></script> -->

<link media="all" href="statics/css/selectAddress.css" type="text/css" rel="stylesheet">
</head>
<body cute-title=""
	ng-class="{hidesidebar: layoutState &amp;&amp; layoutState.hideSidebar, smallbody: layoutState.smallBody, whitebody: layoutState.whiteBody}"
	class="hidesidebar whitebody">

	<!-- ngView:  -->
	<div ng-view="" role="main" class="ng-scope">
		<div class="map ng-scope" ng-class="{mapmode: mapMode}">
			<div class="container mapcontainer">
				<div class="map-header clearfix" map-header="">
					<h1>
						<a href="#" ubt-click="1433"><img
							src="statics/images/map-logo.9a26ef.png" alt="eleme"></a>
					</h1>
					<!-- ngIf: user.user_id -->
					<!-- ngIf: !user.user_id -->
					<span class="map-header-right ng-scope" ng-if="!user.user_id"><a
						ng-href="//h5.ele.me/login/#redirect=https%3A%2F%2Fwww.ele.me%2Fhome%2F"
						target="_top" ubt-click="1430"
						href="login.jsp">注册</a>
						<span>|</span> <a
						ng-href="//h5.ele.me/login/#redirect=https%3A%2F%2Fwww.ele.me%2Fhome%2F"
						ubt-click="1431"
						href="login.jsp">登录</a>
						<a class="btn-security btn-sm" href="#"
						target="_top" ubt-click="1432">我要开店</a></span>
					<!-- end ngIf: !user.user_id -->
				</div>
				<div class="map-main ng-isolate-scope" ng-class="{mapmode: mapMode}"
					map-main="" map-mode="mapMode">
					<h2 class="map-logo">
						<img src="statics/images/map-logo-center.425427.svg" alt="eleme">
					</h2>
					<div class="map-navbar clearfix"
						ng-class="{hasuserinfo: $root.user.user_id}">
						<div map-city="" hide-search-result="hideSearchResult"
							current-city="currentCity" class="map-city ng-isolate-scope"
							map-mode="mapMode">
							<a class="mapcity-current ng-binding" href="javascript:"
								ng-bind="mapCity.current.name" ng-click="mapCity.toggle($event)">广州</a>
							<!-- ngIf: mapCity.showCities -->
						</div>
						<div map-search="" hide-search-result="hideSearchResult"
							current-city="currentCity" map-mode="mapMode"
							class="map-search ng-isolate-scope">
							<form class="mapsearch-inputbar ng-pristine ng-valid"
								ng-submit="search.showSuggests($event, search.keyword)"
								action="#">
								<input placeholder="请输入你的收货地址（写字楼，小区，街道或者学校）"
									ng-model="search.keyword"
									ng-keyup="search.showSuggests($event, search.keyword)"
									ng-keydown="search.chooseSuggest($event)"
									ng-click="search.showSuggests($event)"
									ng-focus="search.showSuggests($event, search.keyword)"
									class="ng-pristine ng-valid" value="">
								<button class="btn-stress" type="submit">搜 索</button>
							</form>
							<div class="mapsearch-suggestlist ui-scrollbar-light">
								<!-- ngIf: search.suggests.length -->
								<!-- ngIf: search.done && !search.suggests.length -->
							</div>
							<!-- ngIf: search.resultshow && !hideSearchResult && mapMode -->
						</div>
					</div>
					<div class="map-content"></div>
				</div>
				<div class="mapfooter" map-footer="">
					<div class="mapfooter-app">
						<div class="mapfooter-app-image">
							<img src="statics/images/appqc.95e532.png" alt="扫码下载 APP"> <span>扫码下载
								APP</span>
						</div>
						<div class="mapfooter-app-text">
							<p>新用户首次下单</p>
							<strong class="color-stress">最高立减30元</strong>
							<p>立即下载APP，享更多优惠吧！</p>
						</div>
					</div>
					<p class="mapfooter-link">
						<a href="#" ubt-click="1434">我要开店</a> <a
							href="#" ubt-click="1435">联系我们</a>
						<a href="#"
							ubt-click="1436">服务条款和协议</a> <a href="#"
							ubt-click="1437">加入我们</a> <a href="#">蜂鸟配送</a>
					</p>
					<div class="footer-copyright serif">
						互联网药品信息服务资格证书:<a
							href="#"
							target="_top">(沪)-经营性-2016-0011</a> | 增值电信业务许可证 : <a
							href="#" target="_top">沪B2-20150033</a> | <a
							href="#" target="_top">沪ICP备
							09007032</a> | <a
							href="#"
							target="_top">上海工商行政管理</a> Copyright ©2008-2017 上海拉扎斯信息科技有限公司,
						All Rights Reserved.
					</div>
					<div class="footer-police container">
						<a href="#"
							rel="nofollow" target="_top"><img
							alt="已通过沪公网备案，备案号 310100103568" src="statics/images/picp_bg.e373b3.jpg"
							height="30"></a>
					</div>
				</div>
			</div>
		</div>
	</div>






</body>
</html>
