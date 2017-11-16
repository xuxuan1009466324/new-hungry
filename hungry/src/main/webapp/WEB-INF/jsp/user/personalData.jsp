<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="eleme" perf-error="desktop/profile/" class="ng-scope">
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<base href="${ctx}/">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">

<title ng-bind="SEO.title" class="ng-binding">个人中心_个人资料 |
	饿了吧网上订餐</title>

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
<!-- <script src="statics/js/vendor.4d50a6.js" type="text/javascript"
	crossorigin="anonymous"></script> -->
<script src="statics/js/profile.22e273.js" type="text/javascript"
	crossorigin="anonymous"></script>


<link media="all" href="statics/css/personalData.css" type="text/css" rel="stylesheet">
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
		<div class="profile-container container" profile-container=""
			page-title="个人资料" page-name="info">
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
						class="ng-binding ng-scope">个人资料</span></span>
				</div>
				<div search-input=""></div>
			</div>
			<%@include file="../common/left.jsp"%>
			<div class="profile-panel" role="main">
				<!-- ngIf: pageTitleVisible -->
				<h3 ng-if="pageTitleVisible" class="profile-paneltitle ng-scope">
					<span ng-bind="pageTitle" class="ng-binding">个人资料</span> <span
						class="subtitle ng-binding"
						ng-bind-html="pageSubtitle | toTrusted"></span>
				</h3>
				<!-- end ngIf: pageTitleVisible -->
				<div class="profile-panelcontent" ng-transclude="">
					<div class="profileinfo ng-scope">
						<p class="profileinfo-item">
							<span class="profileinfo-label">头像</span> <span
								class="profileinfo-face"><img
								ng-src="statics/images/default-avatar.38e40d.png" alt="45931e099"
								src="statics/images/default-avatar.38e40d.png"> <a
								class="profileinfo-facedit" href="#">编辑头像</a></span>
						</p>
						<p class="profileinfo-item">
							<span class="profileinfo-label">用户名</span> <span><span
								class="profileinfo-value ng-binding" ng-bind="user.username">45931e099</span>
								<!-- ngIf: user.is_auto_generated.username --> <a
								ng-if="user.is_auto_generated.username"
								class="profileinfo-link ng-scope" href="javascript:"
								dialog-trigger="username">[修改]</a> <!-- end ngIf: user.is_auto_generated.username --></span>
						</p>
						<p class="profileinfo-item">
							<span class="profileinfo-label">手机号码</span>
							<!-- ngIf: user.is_mobile_valid -->
							<span ng-if="user.is_mobile_valid" class="ng-scope"><span
								class="profileinfo-value ng-binding" ng-bind="user.mobile">189****7761</span>
								<a class="profileinfo-link" href="#">[修改]</a></span>
							<!-- end ngIf: user.is_mobile_valid -->
							<!-- ngIf: !user.is_mobile_valid -->
						</p>
						<p class="profileinfo-item">
							<span class="profileinfo-label">我的邮箱</span>
							<!-- ngIf: user.is_email_valid -->
							<!-- ngIf: !user.is_email_valid -->
							<span ng-if="!user.is_email_valid" class="ng-scope"><span
								class="profileinfo-value unbind">未绑定</span> <a
								class="profileinfo-link unbind" href="#">[立即绑定]</a></span>
							<!-- end ngIf: !user.is_email_valid -->
						</p>
						<div class="dialog" role="dialog" dialog="username"
							style="display: none;">
							<div class="dialog-close icon-close"></div>
							<div class="dialog-content" ng-transclude="">
								<form class="modifyname ng-scope ng-pristine ng-valid"
									ng-submit="modifyUsername()" action="#">
									<h3 class="modifyname-title">
										修改用户名 <small>用户名只能修改一次</small>
									</h3>
									<div class="formfield ng-isolate-scope"
										ng-class="{ 'validate-error': model.$hintTypes[property] === 'error' }"
										form-field="" model="userData" property="name">
										<label ng-bind="label" class="ng-binding"></label><input
											ng-model="userData.name" placeholder="请输入新的用户名（5-24字符）"
											class="ng-scope ng-pristine ng-valid" value="">
										<div class="formfield-hint">
											<span
												ng-class="{ 'icon-dot-error': model.$hintTypes[property] === 'error', 'icon-dot-warning': model.$hintTypes[property] === 'warning' }"
												ng-bind="model.$hints[property]" class="ng-binding"></span>
										</div>
									</div>
									<button class="btn-primary btn-lg">确定</button>
									<a class="modifyname-cancel" href="javascript:"
										dialog-closer="username">取消</a>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp" %>
</body>
</html>
