<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="eleme" perf-error="desktop/profile/" class="ng-scope">
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">

<title ng-bind="SEO.title" class="ng-binding">个人中心_更改密码 |
	饿了么网上订餐</title>

<link rel="shortcut icon" href="statics/images/favicon-16x16.png"
	type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png"
	sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png"
	sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png"
	sizes="96x96">

<!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->

<link media="all" href="statics/css/modifyPassword.css" type="text/css"
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
			page-name="changepassword" page-title="设置密码">
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
						class="ng-binding ng-scope">设置密码</span></span>
				</div>
				<div search-input=""></div>
			</div>
			<%@include file="../common/left.jsp"%>
			<div class="profile-panel" role="main">
				<!-- ngIf: pageTitleVisible -->
				<h3 ng-if="pageTitleVisible" class="profile-paneltitle ng-scope">
					<span ng-bind="pageTitle" class="ng-binding">设置密码</span> <span
						class="subtitle ng-binding"
						ng-bind-html="pageSubtitle | toTrusted"></span>
				</h3>
				<!-- end ngIf: pageTitleVisible -->
				<div class="profile-panelcontent" ng-transclude="">
					<form class="changepwd ng-scope ng-pristine ng-valid"
						ng-submit="changePwdSubmit()" novalidate=""
						action="https://www.ele.me/profile/security/changepassword">
						<p class="changepwd-tip">饿了么提示你：使用大小写字母、数字与标点符号的组合，可以大幅提升帐号安全！</p>
						<!-- ngIf: !firstSet -->
						<div class="formfield ng-isolate-scope"
							ng-class="{ 'validate-error': model.$hintTypes[property] === 'error' }"
							form-field="" label="新密码" model="changePwdData" property="newPwd">
							<label ng-bind="label" class="ng-binding">新密码</label><input
								name="newPwd" ng-model="changePwdData.newPwd"
								placeholder="请输入新密码" class="ng-scope ng-pristine ng-valid"
								type="password">
							<div class="formfield-hint">
								<span
									ng-class="{ 'icon-dot-error': model.$hintTypes[property] === 'error', 'icon-dot-warning': model.$hintTypes[property] === 'warning' }"
									ng-bind="model.$hints[property]" class="ng-binding"></span>
							</div>
						</div>
						<div class="formfield ng-isolate-scope"
							ng-class="{ 'validate-error': model.$hintTypes[property] === 'error' }"
							form-field="" label="确认密码" model="changePwdData"
							property="confirmPwd">
							<label ng-bind="label" class="ng-binding">确认密码</label><input
								name="confirm" ng-model="changePwdData.confirmPwd"
								placeholder="请再次输入密码" class="ng-scope ng-pristine ng-valid"
								type="password">
							<div class="formfield-hint">
								<span
									ng-class="{ 'icon-dot-error': model.$hintTypes[property] === 'error', 'icon-dot-warning': model.$hintTypes[property] === 'warning' }"
									ng-bind="model.$hints[property]" class="ng-binding"></span>
							</div>
						</div>
						<div class="form-group formfield ng-isolate-scope"
							ng-class="{ 'validate-error': model.$hintTypes[property] === 'error' }"
							form-field="">
							<label ng-bind="label" class="ng-binding"></label>
							<button type="submit" class="btn-primary btn-lg ng-scope">确认</button>
							<div class="formfield-hint">
								<span
									ng-class="{ 'icon-dot-error': model.$hintTypes[property] === 'error', 'icon-dot-warning': model.$hintTypes[property] === 'warning' }"
									ng-bind="model.$hints[property]" class="ng-binding"></span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
</body>
</html>
