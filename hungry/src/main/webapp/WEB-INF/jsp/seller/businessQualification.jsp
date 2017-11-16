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


<title ng-bind="SEO.title" class="ng-binding">杭州小笼包外卖_杭州小笼包菜单|电话_杭州小笼包网上订餐
	- 广州市白云区季岚月路30号04档</title>

<link rel="shortcut icon" href="statics/images/favicon-16x16.png" type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png" sizes="96x96">

<meta name="description"
	content="”饿了么”2008年创立于上海，是中国领先的本地生活平台。截至目前，饿了么在线外卖交易平台已覆盖全国2000个城市，加盟餐厅130万家，用户量达2.6亿">
<meta name="keywords" content="杭州小笼包外卖，杭州小笼包菜单，杭州小笼包电话">
<link media="all" href="statics/css/businessQualification.css"  type="text/css"  rel="stylesheet">
</head>
<body cute-title=""
	ng-class="{hidesidebar: layoutState &amp;&amp; layoutState.hideSidebar, smallbody: layoutState.smallBody, whitebody: layoutState.whiteBody}"
	style="position: relative;" class="hidesidebar" lim:visitorcapacity="1">
	
	<div ng-switch="state.type" state="layoutState"
		class="ng-isolate-scope">
		<!-- ngSwitchWhen: checkout -->
		<!-- ngSwitchDefault:  -->
		<div ng-switch-default="" topbar-default="" state="state"
			class="ng-scope ng-isolate-scope">
			<%@include file="../common/header_2.jsp" %>
		</div>
	</div>
	
	<div class="importantnotification container" role="banner">
		<!-- ngIf: enable -->
	</div>
	

	<!-- ngView:  -->
	
	<!-- 商家信息start -->
	<div ng-view="" role="main" class="ng-scope">
		<div class="shopguide ng-isolate-scope" shop-guide="" data="shop"
			isdisabled="shop.disabled">
			<%@include file="../common/top_header.jsp" %>
		</div>
		
		
		<div shop-nav="" data="shop" filter-data="shop.filter"
			display-type="shop.displayType" shop-action="shopAction"
			class="ng-scope ng-isolate-scope">
			<div class="shopnav">
				<div class="container clearfix">
					<div class="shopnav-left">
						<a class="shopnav-tab" href="storeDetails.jsp"
							ng-class="{active: shop.tab === 'index'}">所有商品</a> <a
							class="shopnav-tab" href="comment.jsp"
							ng-class="{active: shop.tab === 'rate'}">评价</a> <a
							class="shopnav-tab active"
							href="businessQualification.jsp"
							ng-class="{active: shop.tab === 'info'}">商家资质</a>
						<!-- ngIf: shopAction === 'menu' -->
					</div>
					<div class="shopnav-search">
						<form class="place-search ng-pristine ng-valid" role="search"
							ng-submit="search()"
							action="https://www.ele.me/shop/157017017/info">
							<button class="place-search-btn icon-search" ubt-click="403"
								ng-attr-ubt-data-keyword="{{searchText}}" title="搜索商家或美食"
								ubt-data-keyword=""></button>
							<label for="globalsearch">搜索商家或美食</label><input id="globalsearch"
								class="place-search-input ng-pristine ng-valid"
								ng-model="searchText" autocomplete="" placeholder="搜索商家,美食..."
								value="">
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="shopmain clearfix container ng-scope">
			<!-- ngIf: shopAction === 'menu' -->
			<!-- ngIf: shopAction === 'rate' -->
			<!-- ngIf: shopAction === 'info' -->
			<div ng-if="shopAction === 'info'" shop-info="" data="shop"
				class="shopinfo ng-isolate-scope" perf-click="desktop/203">
				<iframe class="shopinfo-iframe"
					ng-src="https://h5.ele.me/shop/certification/#/?restaurant_id=8361818673108717&amp;realId=157017017"
					src="businessQualification_1.jsp" frameborder="0"></iframe>
			</div>
			<!-- end ngIf: shopAction === 'info' -->
			<div class="shopmain-right ng-isolate-scope" shop-bulletin=""
				data="shop">
				<div class="shopbulletin">
					<div class="shopbulletin-section">
						<h3 class="shopbulletin-section-title">商家公告</h3>
						<p class="shopbulletin-content ng-binding">杭州小笼包，特色炒饭，营养粥，瓦罐汤等等美味餐品</p>
						<div class="shopbulletin-delivery">
							<h4>配送说明：</h4>
							<p class="ng-binding">配送费¥4</p>
						</div>
						<ul class="shopbulletin-supports">
							<!-- ngRepeat: support in shop.supports -->
							<li ng-repeat="support in shop.supports"
								class="ng-binding ng-scope"><span
								ng-style="{'background-color': '#' + support.icon_color}"
								class="ng-binding" style="background-color: rgb(153, 153, 153);">保</span>
								已加入“外卖保”计划，食品安全有保障</li>
							<!-- end ngRepeat: support in shop.supports -->
						</ul>
						<a href="javascript:" class="shopcomplaint" ng-click="testLogin()">举报商家</a>
					</div>
					<div class="dialog" role="dialog" dialog="complaintDialog"
						style="display: none;">
						<div class="dialog-close icon-close"></div>
						<div class="dialog-content" ng-transclude="">
							<h5 class="complaint-title ng-scope">举报商家</h5>
							<form ng-submit="complaint()"
								class="ng-scope ng-pristine ng-valid"
								action="https://www.ele.me/shop/157017017/info">
								<label class="complaint-field"><textarea
										class="shopcomplaint-textarea ng-pristine ng-valid"
										ng-model="complaintObj.text" rows="6" cols="40"></textarea></label>
								<div class="complaint-field">
									<button type="submit" class="btn-primary">提交</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="sidetools" side-tools="">
			<a href="http://kaidian.ele.me/"
				class="sidetools-item icon-visit-history" target="_top" title="我要开店"
				tooltip="我要开店" tooltip-placement="left"></a>
			<div class="sidetools-item icon-qrcode">
				<img class="sidetools-qrcode" src="statics/images/appqc.95e532.png"
					alt="扫描二维码免费下载手机App">
			</div>
			<a href="javascript:" class="sidetools-item icon-service"
				title="在线客服" tooltip="在线客服" tooltip-placement="left"
				online-service="" target="_top" style="visibility: visible;"></a> <a
				href="javascript:" class="sidetools-item icon-arrow-up" title="回到顶部"
				tooltip="回到顶部" tooltip-placement="left" ng-click="backToTop()"></a>
		</div>
	</div>
	<!-- 商家信息end -->
	
	<%@include file="../common/footer.jsp"%>
</body>
</html>
