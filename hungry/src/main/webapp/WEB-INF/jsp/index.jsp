<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="eleme" perf-error="desktop/" class="ng-scope">
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<base href="${ctx}/">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">

<title ng-bind="SEO.title" class="ng-binding">天河区教师新村(天源路南)附近美食_外卖商家_广东省广州市天河区-饿了么网上订餐</title>

<link rel="shortcut icon" href="statics/images/favicon-16x16.png"
	type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png"
	type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png"
	type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png"
	sizes="96x96">

<!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->

<script src="statics/js/api" data-ref="API_CONFIG"></script>
<script src="statics/js/perf.js" type="text/javascript"
	crossorigin="anonymous"></script>
<!-- <script src="statics/js/vendor.4d50a6.js" type="text/javascript"
	crossorigin="anonymous"></script> -->
<script src="statics/js/main.956670.js" type="text/javascript"
	crossorigin="anonymous"></script>

<link media="all" href="statics/css/homePage.css" type="text/css"
	rel="stylesheet">
</head>
<body cute-title=""
	ng-class="{hidesidebar: layoutState &amp;&amp; layoutState.hideSidebar, smallbody: layoutState.smallBody, whitebody: layoutState.whiteBody}"
	style="position: relative;">
	<!-- 头部 sssssssss -->
	<div ng-switch="state.type" state="layoutState"
		class="ng-isolate-scope">
		<!-- ngSwitchWhen: checkout -->
		<!-- ngSwitchDefault:  -->
		<div ng-switch-default="" topbar-default="" state="state"
			class="ng-scope ng-isolate-scope">
			<%@include file="common/header.jsp"%>
		</div>
	</div>
	<!-- 头部 eeeeeee -->
	<div class="importantnotification container" role="banner">
		<!-- ngIf: enable -->
	</div>
	<!-- 右边导航 sssssssss -->
	<div class="sidebar" role="complementary"
		ng-hide="layoutState &amp;&amp; layoutState.hideSidebar">
		<%@include file="common/right.jsp"%>
		<div class="sidebar-content">
			<!-- ngInclude: activeTemplate ? ('/common/page/_block/sidebar/sidebar-'+ activeTemplate + '/sidebar-'+ activeTemplate + '.html') : '' -->
		</div>
	</div>
	<!-- 右边导航 eeeeeee -->
	<!-- ngView:  -->
	<div ng-view="" role="main" class="ng-scope">
		<div class="container clearfix ng-scope">
			<div class="location"
				ng-style="{visibility: geohash ? '' : 'hidden'}" role="navigation"
				location="">
				<span>当前位置:</span> <span class="location-current"><a
					class="inherit ng-binding" ng-href="/place/ws0egs6hts4"
					ubt-click="401" ng-bind="place.name || place.address"
					href="#">天河区教师新村(天源路南)</a></span> <span
					class="location-change"
					ng-class="{ 'location-hashistory': user.username &amp;&amp; userPlaces &amp;&amp; userPlaces.length > 0 }"><a
					ng-href="/home" ubt-click="400" hardjump=""
					href="selectAddress.jsp">[切换地址]</a>
					<ul class="dropbox location-dropbox" ubt-visit="398">
						<li class="arrow"></li>
						<!-- ngRepeat: userPlace in userPlaces | filter:filterPlace | limitTo: 4 -->
						<li class="changelocation"><a ng-href="/home" hardjump=""
							href="#">修改收货地址<span
								class="icon-location"></span></a></li>
					</ul></span> <span ng-transclude=""></span>
			</div>
			<div class="place-search" role="search" search-input="">
				<a class="place-search-btn icon-search" ubt-click="403"
					ng-attr-ubt-data-keyword="{{searchText}}" title="搜索商家或美食"
					ubt-data-keyword=""></a><label for="globalsearch">搜索商家或美食</label><input
					id="globalsearch" class="place-search-input ng-pristine ng-valid"
					ng-model="searchText" autocomplete="" placeholder="搜索商家,美食..."
					value="">
				<div class="searchbox">
					<div class="searchbox-list searchbox-rstlist ng-hide"
						ng-show="searchRestaurants &amp;&amp; searchRestaurants.length > 0"
						ng-class="{ 'show-separator': searchFoods &amp;&amp; searchFoods.length > 0 }">
						<ul>
							<!-- ngRepeat: restaurant in searchRestaurants | orderBy: [ '-is_opening', 'order_lead_time' ] | limitTo: 5 -->
						</ul>
					</div>
					<div class="searchbox-list searchbox-foodlist ng-hide"
						ng-show="searchFoods &amp;&amp; searchFoods.length > 0">
						<ul>
							<!-- ngRepeat: food in searchFoods  | limitTo: 5 -->
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- ngIf: activities -->
		<div class="place-tab clearfix container ng-scope">
			<div class="place-fetchtakeout ng-isolate-scope"
				show-fetch-takeout-dialog="">
				<img src="statics/images/takeout.408a87.png" alt="谁去拿外卖">
			</div>
		</div>
		<div ng-show="!recentBoughtOnly" class="container ng-scope">
			<div class="excavator container">
				<!-- ngIf: rstCategories.length -->
				<div class="excavator-filter ng-scope" ng-if="rstCategories.length">
					<span class="excavator-filter-name">商家分类:</span>
					<!-- ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope active"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">全部商家</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">美食</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">快餐便当</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">特色菜系</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">异国料理</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">小吃夜宵</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">甜品饮品</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">果蔬生鲜</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">商店超市</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">浪漫鲜花</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">医药健康</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">早餐</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">午餐</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">下午茶</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">晚餐</a>
					<!-- end ngRepeat: category in rstCategories -->
					<a class="excavator-filter-item ng-binding ng-scope"
						href="javascript:" ng-repeat="category in rstCategories"
						ng-class="{'focus': clickedCategory === category.id &amp;&amp; (!clickedCategory || clickedCategory < 0) , 'active': activeCategory === category.id, 'premium': category.id === -10001 &amp;&amp; !pumStream}"
						ng-bind="category.name" ng-click="changeCategory(category)"
						ubt-click="380">夜宵</a>
					<!-- end ngRepeat: category in rstCategories -->
					<div ng-show="subCategories"
						class="excavator-filter-subbox ng-hide">
						<!-- ngRepeat: subitem in subCategories -->
					</div>
				</div>
				<!-- end ngIf: rstCategories.length -->
			</div>
			<div class="place-rstbox clearfix">
				<div class="clearfix"
					data="filteredRestaurants = (rstStream.restaurants | filter: rstStream.filter | filter: otherFilter | orderBy: [ '-is_opening', rstStream.orderBy || 'index' ])"
					style="height: 840px;">
					<a href="storeDetails.jsp" data-rst-id="96386"
						data-bidding="" target="_top" class="rstblock"><div
							class="rstblock-logo">
							<img src="statics/images/e3e95cb60626fe7394e05339a8958jpeg.jpeg"
								alt="平香木桶饭" class="rstblock-logo-icon" width="70" height="70"><span
								class="rstblock-left-timeout">45+ 分钟</span>
						</div>
						<div class="rstblock-content">
							<div class="rstblock-title">平香木桶饭</div>
							<div class="starrating icon-star">
								<span class="icon-star" style="width: 86%;"></span>
							</div>
							<span class="rstblock-monthsales">月售2264单</span>
							<div class="rstblock-cost">免配送费</div>
							<div class="rstblock-activity"></div>
						</div></a> <a href="storeDetails.jsp"
						data-rst-id="156868161" data-bidding="" target="_top"
						class="rstblock"><div class="rstblock-logo">
							<img src="statics/images/947691ef3cb06ee420f9086c1927dpng.png"
								alt="YASO沙拉（长湴店）" class="rstblock-logo-icon" width="70"
								height="70"><span>27 分钟</span>
							<div
								class="elemeicon elemeicon-premiumsign rstblock-logo-premiumsign"></div>
						</div>
						<div class="rstblock-content">
							<div class="rstblock-title">YASO沙拉（长湴店）</div>
							<div class="starrating icon-star">
								<span class="icon-star" style="width: 92%;"></span>
							</div>
							<span class="rstblock-monthsales">月售3908单</span>
							<div class="rstblock-cost">配送费¥3</div>
							<div class="rstblock-activity">
								<i
									style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: rgb(153, 153, 153); border: 1px solid; padding: 0px;">保</i>
							</div>
						</div> </a> <a href="storeDetails.jsp" data-rst-id="1072412"
						data-bidding="" target="_top" class="rstblock"><div
							class="rstblock-logo">
							<img src="statics/images/46a90b7e7f4a619da070cf817aea5jpeg.jpeg"
								alt="渔民新村（汇东店)" class="rstblock-logo-icon" width="70"
								height="70"><span>36 分钟</span>
							<div
								class="elemeicon elemeicon-premiumsign rstblock-logo-premiumsign"></div>
						</div>
						<div class="rstblock-content">
							<div class="rstblock-title">渔民新村（汇东店)</div>
							<div class="starrating icon-star">
								<span class="icon-star" style="width: 90%;"></span>
							</div>
							<span class="rstblock-monthsales">月售1237单</span>
							<div class="rstblock-cost">配送费¥5</div>
							<div class="rstblock-activity">
								<i
									style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: rgb(153, 153, 153); border: 1px solid; padding: 0px;">保</i>
							</div>
						</div> </a> <a href="storeDetails.jsp" data-rst-id="2086727"
						data-bidding="" target="_top" class="rstblock"><div
							class="rstblock-logo">
							<img src="statics/images/4b8c76589dee8b100d77f9c80bde5png.png"
								alt="卢家妈妈（长兴店）" class="rstblock-logo-icon" width="70"
								height="70"><span>30 分钟</span>
							<div
								class="elemeicon elemeicon-premiumsign rstblock-logo-premiumsign"></div>
						</div>
						<div class="rstblock-content">
							<div class="rstblock-title">卢家妈妈（长兴店）</div>
							<div class="starrating icon-star">
								<span class="icon-star" style="width: 90%;"></span>
							</div>
							<span class="rstblock-monthsales">月售1058单</span>
							<div class="rstblock-cost">配送费¥5</div>
							<div class="rstblock-activity">
								<i
									style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: rgb(153, 153, 153); border: 1px solid; padding: 0px;">保</i>
							</div>
						</div></a>
				</div>
				<div class="loading ng-binding ng-isolate-scope"
					ng-show="rstStream.status === 'LOADING'" loading=""
					content="正在载入更多商家..." type="normal">
					<!-- ngIf: type==='profile' -->
					<!-- ngIf: type==='normal' -->
					<img ng-if="type==='normal'" class="normal ng-scope"
						src="statics/images/loading.0e7b2e.gif" alt="正在加载">
					<!-- end ngIf: type==='normal' -->
					正在载入更多商家...
				</div>
				<div id="fetchMoreRst"
					ng-show="rstStream.status === 'NEED_USER_ACTION'" class="ng-hide">点击加载更多商家...</div>
				<div class="place-rstbox-nodata ng-hide"
					ng-show="rstStream.status === 'COMPLETE' &amp;&amp; !filteredRestaurants.length">
					<img class="nodata" src="statics/images/icon-restaurant.b3a359.png"
						alt="找不到商家" width="100">
					<div class="typo-small">附近没有找到符合条件的商家，换个筛选条件试试吧</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 底部 sssssssss -->
	<%@include file="common/footer.jsp"%>
	<!-- 底部  eeeeeee -->

	<script src="statics/js/home"></script>
</body>
</html>
