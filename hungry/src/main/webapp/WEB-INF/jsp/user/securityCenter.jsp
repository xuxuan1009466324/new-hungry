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

<title ng-bind="SEO.title" class="ng-binding">个人中心_安全中心 |
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

<link media="all" href="statics/css/securityCenter.css" type="text/css" rel="stylesheet">
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
		</div>
		<div class="sidebar-content">
			<!-- ngInclude: activeTemplate ? ('/common/page/_block/sidebar/sidebar-'+ activeTemplate + '/sidebar-'+ activeTemplate + '.html') : '' -->
		</div>
	</div>
	<!-- ngView:  -->
	<div ng-view="" role="main" class="ng-scope">
		<div class="profile-container container" profile-container=""
			page-name="security-center" page-title="安全中心">
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
						class="ng-binding ng-scope">安全中心</span></span>
				</div>
				<div search-input=""></div>
			</div>
			<%@include file="../common/left.jsp"%>
			<div class="profile-panel" role="main">
				<!-- ngIf: pageTitleVisible -->
				<h3 ng-if="pageTitleVisible" class="profile-paneltitle ng-scope">
					<span ng-bind="pageTitle" class="ng-binding">安全中心</span> <span
						class="subtitle ng-binding"
						ng-bind-html="pageSubtitle | toTrusted"></span>
				</h3>
				<!-- end ngIf: pageTitleVisible -->
				<div class="profile-panelcontent" ng-transclude="">
					<div class="security-level ng-scope">
						<span>安全等级：</span>
						<div class="security-level-bar">
							<span class="security-level-progress low"
								ng-style="{'width': level.width, 'background-color': level.color}"
								style="width: 60%; background-color: rgb(148, 200, 82);"></span>
						</div>
						<span class="security-level-text ng-binding" ng-bind="level.text"
							ng-style="{'color': level.color}"
							style="color: rgb(148, 200, 82);">高</span> <span
							class="security-level-tip">建议你启动全部安全设置，以保障账户及资金安全！</span>
					</div>
					<div class="loading ng-binding ng-isolate-scope ng-hide" loading=""
						content="正在载入安全信息..." ng-show="securityLoading">
						<!-- ngIf: type==='profile' -->
						<img ng-if="type==='profile'"
							src="statics/images/profile-loading.4984fa.gif" alt="正在加载"
							class="ng-scope">
						<!-- end ngIf: type==='profile' -->
						<!-- ngIf: type==='normal' -->
						正在载入安全信息...
					</div>
					<!-- ngRepeat: item in securityType -->
					<div class="security-type ng-scope"
						ng-repeat="item in securityType">
						<span class="child security-type-icon"><i
							ng-class="item.status ? 'security-type-icon-ok icon-dot-check' : 'security-type-icon-warn icon-dot-warning'"
							class="security-type-icon-warn icon-dot-warning"></i></span> <span
							class="child security-type-name ng-binding security-type-name-weak"
							ng-class="item.status || 'security-type-name-weak'"
							ng-bind="item.name">登录密码</span>
						<div class="child security-type-tip">
							<p ng-bind="item.text.text" class="ng-binding">您还没有设置密码</p>
							<!-- ngIf: item.text.textMore -->
							<p class="security-type-tip-more ng-binding ng-scope"
								ng-if="item.text.textMore"
								ng-bind-html="item.text.textMore | toTrusted">设置登陆密码，使用饿了么更方便、安全。</p>
							<!-- end ngIf: item.text.textMore -->
						</div>
						<span class="child security-type-linkcon"><a
							class="security-type-link ng-binding btn-stress" target=""
							ng-href="/profile/security/changepassword"
							ng-class="item.status ? 'btn-link' : 'btn-stress'"
							ng-bind="item.text.link"
							href="https://www.ele.me/profile/security/changepassword">设置密码</a></span>
					</div>
					<!-- end ngRepeat: item in securityType -->
					<div class="security-type ng-scope"
						ng-repeat="item in securityType">
						<span class="child security-type-icon"><i
							ng-class="item.status ? 'security-type-icon-ok icon-dot-check' : 'security-type-icon-warn icon-dot-warning'"
							class="security-type-icon-ok icon-dot-check"></i></span> <span
							class="child security-type-name ng-binding"
							ng-class="item.status || 'security-type-name-weak'"
							ng-bind="item.name">手机验证</span>
						<div class="child security-type-tip">
							<p ng-bind="item.text.text" class="ng-binding">已绑定手机
								182****3646</p>
							<!-- ngIf: item.text.textMore -->
						</div>
						<span class="child security-type-linkcon"><a
							class="security-type-link ng-binding btn-link" target=""
							ng-href="/profile/security/changemobile/"
							ng-class="item.status ? 'btn-link' : 'btn-stress'"
							ng-bind="item.text.link"
							href="https://www.ele.me/profile/security/changemobile/">更改手机</a></span>
					</div>
					<!-- end ngRepeat: item in securityType -->
					<div class="security-type ng-scope"
						ng-repeat="item in securityType">
						<span class="child security-type-icon"><i
							ng-class="item.status ? 'security-type-icon-ok icon-dot-check' : 'security-type-icon-warn icon-dot-warning'"
							class="security-type-icon-warn icon-dot-warning"></i></span> <span
							class="child security-type-name ng-binding security-type-name-weak"
							ng-class="item.status || 'security-type-name-weak'"
							ng-bind="item.name">邮箱激活</span>
						<div class="child security-type-tip">
							<p ng-bind="item.text.text" class="ng-binding">您还没有绑定邮箱</p>
							<!-- ngIf: item.text.textMore -->
							<p class="security-type-tip-more ng-binding ng-scope"
								ng-if="item.text.textMore"
								ng-bind-html="item.text.textMore | toTrusted">验证后可用户快速找回密码，接受账户提醒邮件。</p>
							<!-- end ngIf: item.text.textMore -->
						</div>
						<span class="child security-type-linkcon"><a
							class="security-type-link ng-binding btn-stress" target=""
							ng-href="/profile/security/bindemail"
							ng-class="item.status ? 'btn-link' : 'btn-stress'"
							ng-bind="item.text.link"
							href="https://www.ele.me/profile/security/bindemail">立即绑定</a></span>
					</div>
					<!-- end ngRepeat: item in securityType -->
					<div class="security-type ng-scope"
						ng-repeat="item in securityType">
						<span class="child security-type-icon"><i
							ng-class="item.status ? 'security-type-icon-ok icon-dot-check' : 'security-type-icon-warn icon-dot-warning'"
							class="security-type-icon-ok icon-dot-check"></i></span> <span
							class="child security-type-name ng-binding"
							ng-class="item.status || 'security-type-name-weak'"
							ng-bind="item.name">支付额度</span>
						<div class="child security-type-tip">
							<p ng-bind="item.text.text" class="ng-binding">已设定支付额 50 元</p>
							<!-- ngIf: item.text.textMore -->
							<p class="security-type-tip-more ng-binding ng-scope"
								ng-if="item.text.textMore"
								ng-bind-html="item.text.textMore | toTrusted">如果当日在线订餐金额超出支付额度，手机验证后才可以付款。</p>
							<!-- end ngIf: item.text.textMore -->
						</div>
						<span class="child security-type-linkcon"><a
							class="security-type-link ng-binding btn-link" target=""
							ng-href="/profile/security/modifypay"
							ng-class="item.status ? 'btn-link' : 'btn-stress'"
							ng-bind="item.text.link"
							href="https://www.ele.me/profile/security/modifypay">更改额度</a></span>
					</div>
					<!-- end ngRepeat: item in securityType -->
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
</body>
</html>
