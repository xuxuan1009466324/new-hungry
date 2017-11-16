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

<title ng-bind="SEO.title" class="ng-binding">个人中心_我的收藏 |
	饿了么网上订餐</title>


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
	crossorigin="anonymous"></script>  -->
<script src="statics/js/profile.22e273.js" type="text/javascript"
	crossorigin="anonymous"></script>

<meta name="description"
	content="”饿了么”2008年创立于上海，是中国领先的本地生活平台。截至目前，饿了么在线外卖交易平台已覆盖全国2000个城市，加盟餐厅130万家，用户量达2.6亿">
<meta name="keywords" content="饿了么，网上订餐，外卖，快餐外卖，外卖网">
<link media="all" href="statics/css/favorite.css" type="text/css"
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
		<div class="favor profile-container container" profile-container=""
			page-name="favor" page-title="我的收藏" page-title-visible="true">
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
						href="selectAddress.jsp">[切换地址]</a>
						<ul class="dropbox location-dropbox" ubt-visit="398">
							<li class="arrow"></li>
							<!-- ngRepeat: userPlace in userPlaces | filter:filterPlace | limitTo: 4 -->
							<li class="changelocation"><a ng-href="/home" hardjump=""
								href="https://www.ele.me/home">修改收货地址<span
									class="icon-location"></span></a></li>
						</ul></span> <span ng-transclude=""><i
						class="icon-arrow-right ng-scope"></i><span
						class="ng-binding ng-scope">我的收藏</span></span>
				</div>
				<div search-input=""></div>
			</div>
			<%@include file="../common/left.jsp"%>
			<div class="profile-panel" role="main">
				<!-- ngIf: pageTitleVisible -->
				<h3 ng-if="pageTitleVisible" class="profile-paneltitle ng-scope">
					<span ng-bind="pageTitle" class="ng-binding">我的收藏</span> <span
						class="subtitle ng-binding"
						ng-bind-html="pageSubtitle | toTrusted"></span>
				</h3>
				<!-- end ngIf: pageTitleVisible -->
				<div class="profile-panelcontent" ng-transclude="">
					<div class="loading ng-binding ng-isolate-scope ng-hide" loading=""
						content="正在载入商家信息..." ng-show="favorLoading">
						<!-- ngIf: type==='profile' -->
						<img ng-if="type==='profile'"
							src="statics/images/profile-loading.4984fa.gif" alt="正在加载"
							class="ng-scope">
						<!-- end ngIf: type==='profile' -->
						<!-- ngIf: type==='normal' -->
						正在载入商家信息...
					</div>
					<div class="favor-restaurants ng-scope" ng-show="!favorLoading">
						<h4 class="favor-title">
							当前区域共有<span ng-bind="inRegionFavors.length || 0"
								class="ng-binding">2</span>家可配送商家
						</h4>
						<div class="clearfix">
							<!-- ngRepeat: restaurant in inRegionFavors -->
							<div class="favor-rstblock"
								ng-class="{'outofregion':outofregion}" favor-rst-block=""
								ng-repeat="restaurant in inRegionFavors">
								<div class="favor-rstblock-header">
									<div class="favor-rstblock-headerbg"
										ng-style="{'background-image': 'url(' + backgroundUrl + ')'}"
										style="background-image: url('statics/images/favor-rst-bg1.804470.jpg');"></div>
									<a class="favor-rstblock-name ng-binding"
										ng-bind="restaurant.name" ng-href="/shop/1072412"
										title="前往渔民新村（汇东店)" href="https://www.ele.me/shop/1072412">渔民新村（汇东店)</a>
									<!-- ngIf: !restaurant.is_opening && !outofregion -->
									<!-- ngIf: restaurant.status === 5 && !outofregion -->
								</div>
								<a ng-href="/shop/1072412" title="前往渔民新村（汇东店)"
									href="https://www.ele.me/shop/1072412"><img
									ng-src="//fuss10.elemecdn.com/9/58/46a90b7e7f4a619da070cf817aea5jpeg.jpeg?imageMogr2/thumbnail/78x78"
									class="favor-rstblock-logo" alt="商家 LOGO"
									src="statics/images/46a90b7e7f4a619da070cf817aea5jpeg.jpeg"></a>
								<div class="favor-rstblock-starrating icon-star">
									<span class="icon-star"
										ng-style="{ width: (restaurant.rating * 20) + '%' }"
										style="width: 92%;"></span>
								</div>
								<span class="favor-rstblock-monthsales ng-binding"
									ng-bind="'月售' + restaurant.recent_order_num + '单'">月售1238单</span>
								<div class="favor-rstblock-content">
									<div class="favor-rstblock-item">
										<p>起送价</p>
										<p class="value icon-yen ng-binding"
											ng-bind="restaurant.float_minimum_order_amount">20</p>
									</div>
									<div class="favor-rstblock-item">
										<p>送餐时间</p>
										<p class="value time ng-binding"
											ng-bind="restaurant.order_lead_time_text ||  0">31</p>
									</div>
								</div>
								<div class="favor-rstblock-activity">
									<!-- ngRepeat: activity in restaurant.activities | limitTo: 8 -->
									<i ng-repeat="activity in restaurant.activities | limitTo: 8"
										ng-bind="activity.icon_name"
										class="icon ng-binding ng-scope ng-isolate-scope"
										favor-activity-icon="" name="activity.icon_name"
										color="activity.icon_color"
										style="color: rgb(153, 153, 153); border: 1px solid rgb(153, 153, 153); background-color: transparent;">保</i>
									<!-- end ngRepeat: activity in restaurant.activities | limitTo: 8 -->
									<i class="favor-rstblock-cancel icon-trash"
										ng-click="showRemoveMask($index)"></i>
								</div>
							</div>
							<!-- end ngRepeat: restaurant in inRegionFavors -->
							<div class="favor-rstblock"
								ng-class="{'outofregion':outofregion}" favor-rst-block=""
								ng-repeat="restaurant in inRegionFavors">
								<div class="favor-rstblock-header">
									<div class="favor-rstblock-headerbg"
										ng-style="{'background-image': 'url(' + backgroundUrl + ')'}"
										style="background-image: url('statics/images/favor-rst-bg2.7fd924.jpg');"></div>
									<a class="favor-rstblock-name ng-binding"
										ng-bind="restaurant.name" ng-href="/shop/157017017"
										title="前往杭州小笼包" href="https://www.ele.me/shop/157017017">杭州小笼包</a>
									<!-- ngIf: !restaurant.is_opening && !outofregion -->
									<!-- ngIf: restaurant.status === 5 && !outofregion -->
								</div>
								<a ng-href="/shop/157017017" title="前往杭州小笼包"
									href="https://www.ele.me/shop/157017017"><img
									ng-src="//fuss10.elemecdn.com/8/cc/2e8fccfc39a1334dd656ac73ed821jpeg.jpeg?imageMogr2/thumbnail/78x78"
									class="favor-rstblock-logo" alt="商家 LOGO"
									src="statics/images/2e8fccfc39a1334dd656ac73ed821jpeg.jpeg"></a>
								<div class="favor-rstblock-starrating icon-star">
									<span class="icon-star"
										ng-style="{ width: (restaurant.rating * 20) + '%' }"
										style="width: 90%;"></span>
								</div>
								<span class="favor-rstblock-monthsales ng-binding"
									ng-bind="'月售' + restaurant.recent_order_num + '单'">月售1835单</span>
								<div class="favor-rstblock-content">
									<div class="favor-rstblock-item">
										<p>起送价</p>
										<p class="value icon-yen ng-binding"
											ng-bind="restaurant.float_minimum_order_amount">20</p>
									</div>
									<div class="favor-rstblock-item">
										<p>送餐时间</p>
										<p class="value time ng-binding"
											ng-bind="restaurant.order_lead_time_text ||  0">44</p>
									</div>
								</div>
								<div class="favor-rstblock-activity">
									<!-- ngRepeat: activity in restaurant.activities | limitTo: 8 -->
									<i ng-repeat="activity in restaurant.activities | limitTo: 8"
										ng-bind="activity.icon_name"
										class="icon ng-binding ng-scope ng-isolate-scope"
										favor-activity-icon="" name="activity.icon_name"
										color="activity.icon_color"
										style="color: rgb(153, 153, 153); border: 1px solid rgb(153, 153, 153); background-color: transparent;">保</i>
									<!-- end ngRepeat: activity in restaurant.activities | limitTo: 8 -->
									<i class="favor-rstblock-cancel icon-trash"
										ng-click="showRemoveMask($index)"></i>
								</div>
							</div>
							<!-- end ngRepeat: restaurant in inRegionFavors -->
							<!-- ngIf: !inRegionFavors.length -->
						</div>
					</div>
					<div class="favor-restaurants ng-scope" ng-show="!favorLoading">
						<h4 class="favor-title">当前区域不可配送的商家</h4>
						<div class="clearfix">
							<!-- ngRepeat: restaurant in outOfRegionFavors -->
							<!-- ngIf: !outOfRegionFavors.length -->
							<div class="nodata ng-isolate-scope"
								ng-if="!outOfRegionFavors.length" nodatatip=""
								content="暂无不可配送商家">
								<p class="nodata-container ng-binding"
									ng-bind-html="content | toTrusted">暂无不可配送商家</p>
							</div>
							<!-- end ngIf: !outOfRegionFavors.length -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
</body>
</html>
