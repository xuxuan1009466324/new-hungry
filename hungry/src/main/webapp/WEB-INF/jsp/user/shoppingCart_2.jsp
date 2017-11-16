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

<link rel="shortcut icon" href="statics/images/favicon-16x16.png" type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png" sizes="96x96">


<!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->

<script src="statics/js/api" data-ref="API_CONFIG"></script>
<script src="statics/js/perf.js" type="text/javascript" crossorigin="anonymous"></script>
<script src="statics/js/vendor.4d50a6.js" type="text/javascript"
	crossorigin="anonymous"></script>
<script src="statics/js/main.956670.js" type="text/javascript"
	crossorigin="anonymous"></script>


<link media="all" href="statics/css/shoppingCart_2.css" type="text/css" rel="stylesheet">
</head>
<body cute-title=""
	ng-class="{hidesidebar: layoutState &amp;&amp; layoutState.hideSidebar, smallbody: layoutState.smallBody, whitebody: layoutState.whiteBody}"
	style="position: relative;">


		<!-- ngIf: enable -->
	</div>
	<div class="sidebar" role="complementary"
		ng-hide="layoutState &amp;&amp; layoutState.hideSidebar"
		style="transform: translate3d(-295px, 0px, 0px);">
		<div class="sidebar-tabs">
			<div class="toolbar-tabs-middle">
				<a class="toolbar-btn icon-order toolbar-close"
					href="order.jsp" hardjump="" tooltip="我的订单"
					tooltip-placement="left" ubt-click="toolbar_order">
					<!-- ngIf: sidebarCount.uncompletedOrder > 0 -->
				</a>
				<div class="toolbar-separator"></div>
				<a
					class="toolbar-cartbtn icon-cart toolbar-open toolbar-cartbtn-shownum focus"
					href="javascript:" template="cart"
					ng-class="{'focus': (activeTemplate === 'cart' &amp;&amp; isSidebarOpen), 'toolbar-cartbtn-shownum': foodCount.count}"
					ubt-click="390">购物车<!-- ngIf: foodCount.count -->
					<i class="toolbar-cartnum ng-binding ng-scope"
					ng-if="foodCount.count" ng-bind="foodCount.count">5</i>
				<!-- end ngIf: foodCount.count --></a>
				<div class="toolbar-separator"></div>
				<a class="toolbar-btn icon-notice toolbar-open modal-hide"
					href="personalData.jsp" template="message"
					ng-class="{'focus': (activeTemplate === 'message' &amp;&amp; isSidebarOpen), 'toolbar-open': user, 'modal-hide': user}"
					tooltip="我的信息" tooltip-placement="left" ubt-click="392">
					<!-- ngIf: messageCount.count -->
				</a>
			</div>
			<div class="toolbar-tabs-bottom">
				<div class="toolbar-btn icon-QR-code">
					<div class="dropbox toolbar-tabs-dropbox">
						<a
							href="http://static11.elemecdn.com/eleme/desktop/mobile/index.html"
							target="_top"><img src="statics/images/appqc.95e532.png" alt="下载手机应用">
						<p>下载手机应用</p>
							<p class="icon-QR-code-bonus">即可参加分享红包活动</p></a>
					</div>
				</div>
				<a class="toolbar-btn sidebar-btn-backtop icon-top" tooltip="回到顶部"
					title="回到顶部" href="javascript:" tooltip-placement="left"
					style="visibility: hidden;"></a>
			</div>
		</div>
		<div class="sidebar-content">
			<!-- ngInclude: activeTemplate ? ('/common/page/_block/sidebar/sidebar-'+ activeTemplate + '/sidebar-'+ activeTemplate + '.html') : '' -->
			<div
				ng-include="activeTemplate ? ('/common/page/_block/sidebar/sidebar-'+ activeTemplate + '/sidebar-'+ activeTemplate + '.html') : ''"
				class="ng-scope">
				<div ng-controller="sidebarCartCtrl" class="ng-scope">
					<div class="sidebarcart-caption">
						<a ng-href="/shop/1405244"
							ng-bind="cart.restaurant_info.name || '购物车'" ubt-click="394"
							class="ng-binding" href="https://www.ele.me/shop/1405244">购物车</a>
						<span class="icon-angle-double-right" ng-click="toggleSidebar()"></span>
					</div>
					<!-- ngIf: loading -->
					<!-- ngIf: pieces -->
					<div ng-if="pieces" class="sidebarcart ng-scope">
						<!-- ngRepeat: basket in cart -->
						<!-- ngIf: basket.length -->
						<dl ng-if="basket.length" ng-repeat="basket in cart"
							class="ng-scope">
							<dt>
								<span ng-bind="$index + 1 + '号购物车'" class="ng-binding">1号购物车</span>
								<!-- ngIf: basket.length -->
								<a ng-if="basket.length" ng-click="clearGroup($index, $event)"
									href="javascript:" class="sidebarcart-clear ng-scope">[清空]</a>
								<!-- end ngIf: basket.length -->
							</dt>
							<!-- ngRepeat: item in basket -->
							<dd ng-repeat="item in basket" class="ng-scope">
								<ul>
									<li class="clearfix"><div
											class="sidebarcart-name ng-binding" ng-bind="item.name"
											title="鳗鱼小卷1份6粒">鳗鱼小卷1份6粒</div>
										<div class="sidebarcart-quantity">
											<span
												ng-click="update(item, item.quantity - 1, $parent.$index, $event)">-</span>
											<input ng-model="item.quantity"
												ng-change="update(item, item.quantity, $parent.$index)"
												class="ng-pristine ng-valid" value="1"> <span
												ng-click="update(item, item.quantity + 1, $parent.$index)">+</span>
										</div>
										<div class="sidebarcart-price ng-binding"
											ng-bind="item.price * item.quantity">6</div></li>
								</ul>
							</dd>
							<!-- end ngRepeat: item in basket -->
							<dd ng-repeat="item in basket" class="ng-scope">
								<ul>
									<li class="clearfix"><div
											class="sidebarcart-name ng-binding" ng-bind="item.name"
											title="吞拿鱼小卷1份6粒">吞拿鱼小卷1份6粒</div>
										<div class="sidebarcart-quantity">
											<span
												ng-click="update(item, item.quantity - 1, $parent.$index, $event)">-</span>
											<input ng-model="item.quantity"
												ng-change="update(item, item.quantity, $parent.$index)"
												class="ng-pristine ng-valid" value="1"> <span
												ng-click="update(item, item.quantity + 1, $parent.$index)">+</span>
										</div>
										<div class="sidebarcart-price ng-binding"
											ng-bind="item.price * item.quantity">6</div></li>
								</ul>
							</dd>
							<!-- end ngRepeat: item in basket -->
							<dd ng-repeat="item in basket" class="ng-scope">
								<ul>
									<li class="clearfix"><div
											class="sidebarcart-name ng-binding" ng-bind="item.name"
											title="火焰蟹脚棒盖饭">火焰蟹脚棒盖饭</div>
										<div class="sidebarcart-quantity">
											<span
												ng-click="update(item, item.quantity - 1, $parent.$index, $event)">-</span>
											<input ng-model="item.quantity"
												ng-change="update(item, item.quantity, $parent.$index)"
												class="ng-pristine ng-valid" value="1"> <span
												ng-click="update(item, item.quantity + 1, $parent.$index)">+</span>
										</div>
										<div class="sidebarcart-price ng-binding"
											ng-bind="item.price * item.quantity">28</div></li>
								</ul>
							</dd>
							<!-- end ngRepeat: item in basket -->
							<dd ng-repeat="item in basket" class="ng-scope">
								<ul>
									<li class="clearfix"><div
											class="sidebarcart-name ng-binding" ng-bind="item.name"
											title="火炙蟹棒寿司2件">火炙蟹棒寿司2件</div>
										<div class="sidebarcart-quantity">
											<span
												ng-click="update(item, item.quantity - 1, $parent.$index, $event)">-</span>
											<input ng-model="item.quantity"
												ng-change="update(item, item.quantity, $parent.$index)"
												class="ng-pristine ng-valid" value="1"> <span
												ng-click="update(item, item.quantity + 1, $parent.$index)">+</span>
										</div>
										<div class="sidebarcart-price ng-binding"
											ng-bind="item.price * item.quantity">12</div></li>
								</ul>
							</dd>
							<!-- end ngRepeat: item in basket -->
							<dd ng-repeat="item in basket" class="ng-scope">
								<ul>
									<li class="clearfix"><div
											class="sidebarcart-name ng-binding" ng-bind="item.name"
											title="火炙芝士玉子寿司2件">火炙芝士玉子寿司2件</div>
										<div class="sidebarcart-quantity">
											<span
												ng-click="update(item, item.quantity - 1, $parent.$index, $event)">-</span>
											<input ng-model="item.quantity"
												ng-change="update(item, item.quantity, $parent.$index)"
												class="ng-pristine ng-valid" value="1"> <span
												ng-click="update(item, item.quantity + 1, $parent.$index)">+</span>
										</div>
										<div class="sidebarcart-price ng-binding"
											ng-bind="item.price * item.quantity">8</div></li>
								</ul>
							</dd>
							<!-- end ngRepeat: item in basket -->
						</dl>
						<!-- end ngIf: basket.length -->
						<!-- end ngRepeat: basket in cart -->
						<!-- ngIf: cart.extra -->
					</div>
					<!-- end ngIf: pieces -->
					<div class="sidebarcart-summary" ng-show="pieces">
						<p>
							共 <span class="color-stress ng-binding" ng-bind="pieces">5</span>
							份，总计 <span class="color-stress ng-binding" ng-bind="total">60</span>
						</p>
						<button ng-click="settle()" class="sidebarcart-submit ng-binding"
							ng-class="{ 'sidebarcart-hasagio': submitButton.disabled }"
							ng-bind="submitButton.text" ubt-click="391">去结算</button>
					</div>
					<!-- ngIf: !loading && !pieces -->
				</div>
			</div>
		</div>
	</div>
	<!-- ngView:  -->

	<script src="statics/js/home"></script>

</body>
</html>
