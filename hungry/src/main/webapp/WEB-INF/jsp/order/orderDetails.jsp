<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="eleme" perf-error="desktop/profile/" class="ng-scope">
<head>
<base href="${pageContext.request.contextPath }/">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">
<title ng-bind="SEO.title" class="ng-binding">个人中心_订单详情 |
	饿了么网上订餐</title>

<link rel="shortcut icon" href="statics/images/favicon-16x16.png" type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png" sizes="96x96">

<meta name="mobile-agent"
	content="format=html5; url=http://m.ele.me/profile">
<meta name="description"
	content="”饿了么”2008年创立于上海，是中国领先的本地生活平台。截至目前，饿了么在线外卖交易平台已覆盖全国2000个城市，加盟餐厅130万家，用户量达2.6亿">
<meta name="keywords" content="饿了么，网上订餐，外卖，快餐外卖，外卖网">
<link media="all" href="statics/css/orderDetails.css" type="text/css" rel="stylesheet">
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
			page-title="订单详情" page-name="orderProgress">
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
						href="https://www.ele.me/home">[切换地址]</a>
					<ul class="dropbox location-dropbox" ubt-visit="398">
							<li class="arrow"></li>
							<!-- ngRepeat: userPlace in userPlaces | filter:filterPlace | limitTo: 4 -->
							<li class="changelocation"><a ng-href="/home" hardjump=""
								href="https://www.ele.me/home">修改收货地址<span
									class="icon-location"></span></a></li>
						</ul></span> <span ng-transclude=""><i
						class="icon-arrow-right ng-scope"></i><span
						class="ng-binding ng-scope">订单详情</span></span>
				</div>
				<div search-input=""></div>
			</div>
			<%@include file="../common/left.jsp"%>
			<div class="profile-panel" role="main">
				<!-- ngIf: pageTitleVisible -->
				<h3 ng-if="pageTitleVisible" class="profile-paneltitle ng-scope">
					<span ng-bind="pageTitle" class="ng-binding">订单详情</span> <span
						class="subtitle ng-binding"
						ng-bind-html="pageSubtitle | toTrusted"></span>
				</h3>
				<!-- end ngIf: pageTitleVisible -->
				<div class="profile-panelcontent" ng-transclude="">
					<div class="loading ng-binding ng-isolate-scope ng-hide" loading=""
						ng-hide="progressDisplay">
						<!-- ngIf: type==='profile' -->
						<img ng-if="type==='profile'" src="statics/images/profile-loading.4984fa.gif"
							alt="正在加载" class="ng-scope">
						<!-- end ngIf: type==='profile' -->
						<!-- ngIf: type==='normal' -->
						正在载入数据...
					</div>
					<div ng-show="progressDisplay" class="ng-scope">
						<div orderprogress-refundinfo="" link="orderReady"
							class="ng-isolate-scope">
							<!-- ngIf: refundingShow -->
						</div>
						<!-- ngIf: data -->
						<ul
							class="orderprogress-topcard orderprogress-timeline ng-isolate-scope"
							orderprogress-timeline="" link="orderReady">
							<!-- ngRepeat: item in timeline -->
							<li ng-repeat="item in timeline"
								ng-class="{active: item.status === 'ongoing'}"
								class="ng-binding ng-scope">订单已提交</li>
							<!-- end ngRepeat: item in timeline -->
							<li ng-repeat="item in timeline"
								ng-class="{active: item.status === 'ongoing'}"
								class="ng-binding ng-scope">商家已接单</li>
							<!-- end ngRepeat: item in timeline -->
							<li ng-repeat="item in timeline"
								ng-class="{active: item.status === 'ongoing'}"
								class="ng-binding ng-scope active">已送达</li>
							<!-- end ngRepeat: item in timeline -->
						</ul>
						<div class="orderprogress-card ng-isolate-scope"
							orderprogress-status="" link="orderReady">
							<!-- ngIf: showStatus -->
							<div class="orderprogress-status ng-scope" ng-if="showStatus">
								<h5 class="orderprogress-statustitle ng-binding"
									ng-bind-html="status.title | toTrusted">订单已完成</h5>
								<p class="orderprogress-statusdesc ng-binding"
									ng-bind-html="status.description | toTrusted">21:40确认送达</p>
								<div class="orderprogress-statusbuttons">
									<!-- ngIf: remind.show -->
									<!-- ngRepeat: button in status.buttons -->
									<a href="javascript:" ng-repeat="button in status.buttons"
										ng-bind="button.text" ng-class="button.style"
										ng-click="button.method()"
										class="ng-binding ng-scope linktype">申请退单</a>
									<!-- end ngRepeat: button in status.buttons -->
									<a href="javascript:" ng-repeat="button in status.buttons"
										ng-bind="button.text" ng-class="button.style"
										ng-click="button.method()"
										class="ng-binding ng-scope linktype">再来一单</a>
									<!-- end ngRepeat: button in status.buttons -->
									<a href="javascript:" ng-repeat="button in status.buttons"
										ng-bind="button.text" ng-class="button.style"
										ng-click="button.method()"
										class="ng-binding ng-scope buttontype">评价得168积分</a>
									<!-- end ngRepeat: button in status.buttons -->
								</div>
							</div>
							<!-- end ngIf: showStatus -->
						</div>
						<div orderprogress-rstinfo="" link="orderReady"
							class="ng-isolate-scope">
							<div class="orderprogress-rstinfo">
								<a ng-href="/shop/223074" href="https://www.ele.me/shop/223074"><img
									class="orderprogress-rstimg"
									ng-src="//fuss10.elemecdn.com/9/83/62d623ed78ec9e842646c60fd0478jpeg.jpeg?imageMogr2/thumbnail/44x44"
									ng-alt="祥记自选快餐砂锅麻辣烫"
									src="statics/images/62d623ed78ec9e842646c60fd0478jpeg.jpeg" width="44"
									height="44"></a>
								<div class="orderprogress-rstgrid">
									<h4 class="orderprogress-rstname">
										<a class="inherit ng-binding" ng-href="/shop/223074"
											ng-bind="restaurant.name"
											href="https://www.ele.me/shop/223074">祥记自选快餐砂锅麻辣烫</a>
									</h4>
									<div class="orderprogress-rstextra">
										<span ng-bind="'订单号：' + order.unique_id" class="ng-binding">订单号：1213564024032782350</span>
										<span ng-bind="'商家电话：' + restaurant.phoneMade"
											class="ng-binding">商家电话：13533968893</span>
									</div>
								</div>
								<div class="orderprogress-rstoperate">
									<!-- ngIf: !favored -->
									<!-- ngIf: favored -->
									<a href="javascript:"
										class="rstinfo-unfavor ng-binding ng-scope" ng-if="favored"
										ng-click="favor('delete')" ng-mouseover="toggleFavorText(1)"
										ng-mouseleave="toggleFavorText(0)"><i
										class="icon favored icon-order-favor"></i>已收藏</a>
									<!-- end ngIf: favored -->
									<!-- ngIf: !complaintStatus -->
									<a href="javascript:" ng-if="!complaintStatus"
										dialog-trigger="complaintDialog" class="ng-scope"><i
										class="icon icon-order-complaint"></i>投诉</a>
									<!-- end ngIf: !complaintStatus -->
									<!-- ngIf: complaintStatus === 1 -->
								</div>
							</div>
							<div class="dialog" role="dialog" dialog="complaintDialog"
								style="display: none;">
								<div class="dialog-close icon-close"></div>
								<div class="dialog-content" ng-transclude="">
									<h5 class="complaint-title ng-scope">投诉举报</h5>
									<form ng-submit="complaint()"
										class="ng-scope ng-pristine ng-valid"
										action="https://www.ele.me/profile/order/id/1213564024032782350">
										<!-- ngRepeat: reasonText in complaintType.typeMap -->
										<label class="complaint-field ng-scope"
											ng-repeat="reasonText in complaintType.typeMap"><input
											name="reason" ng-model="complaintType.type" ng-value="$index"
											class="ng-pristine ng-valid" value="0" type="radio"><span
											ng-bind="reasonText" class="ng-binding">商家已确认，但没有送外卖</span></label>
										<!-- end ngRepeat: reasonText in complaintType.typeMap -->
										<label class="complaint-field ng-scope"
											ng-repeat="reasonText in complaintType.typeMap"><input
											name="reason" ng-model="complaintType.type" ng-value="$index"
											class="ng-pristine ng-valid" value="1" type="radio"><span
											ng-bind="reasonText" class="ng-binding">商家参加了活动，但没有优惠</span></label>
										<!-- end ngRepeat: reasonText in complaintType.typeMap -->
										<label class="complaint-field ng-scope"
											ng-repeat="reasonText in complaintType.typeMap"><input
											name="reason" ng-model="complaintType.type" ng-value="$index"
											class="ng-pristine ng-valid" value="2" checked="checked"
											type="radio"><span ng-bind="reasonText"
											class="ng-binding">其他</span></label>
										<!-- end ngRepeat: reasonText in complaintType.typeMap -->
										<label class="complaint-field"><textarea
												ng-model="complaintType.reason_text" rows="2" cols="40"
												ng-disabled="complaintType.type !== 2"
												class="ng-pristine ng-valid"></textarea></label>
										<div class="complaint-field">
											<button type="submit" class="btn-primary">提交</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div class="orderprogress-cardtable">
							<div class="orderprogress-cardcell ng-isolate-scope"
								orderprogress-total="" link="orderReady">
								<div class="orderprogress-total">
									<div class="orderprogress-totalrow orderprogress-totaltitle">
										<span class="cell name">菜品</span> <span class="cell quantity">数量</span>
										<span class="cell price">小计（元）</span>
									</div>
									<!-- ngRepeat: row in totalList -->
									<div ng-repeat="row in totalList" ng-switch="" on="row.type"
										class="ng-scope">
										<!-- ngSwitchWhen: baseline -->
										<!-- ngSwitchWhen: basketTitle -->
										<!-- ngSwitchWhen: food -->
										<div ng-switch-when="food"
											class="orderprogress-totalrow ng-scope">
											<span class="cell name ng-binding" ng-bind="row.food.name">香辣莲藕炒瘦肉饭</span>
											<span class="cell quantity ng-binding"
												ng-bind="row.food.quantity">1</span> <span
												class="cell price ng-binding"
												ng-bind="row.food.price * row.food.quantity | number:2">8.88</span>
										</div>
										<!-- ngSwitchWhen: extra -->
									</div>
									<!-- end ngRepeat: row in totalList -->
									<div ng-repeat="row in totalList" ng-switch="" on="row.type"
										class="ng-scope">
										<!-- ngSwitchWhen: baseline -->
										<!-- ngSwitchWhen: basketTitle -->
										<!-- ngSwitchWhen: food -->
										<div ng-switch-when="food"
											class="orderprogress-totalrow ng-scope">
											<span class="cell name ng-binding" ng-bind="row.food.name">烧鸭十猪脚十青菜十加多宝</span>
											<span class="cell quantity ng-binding"
												ng-bind="row.food.quantity">1</span> <span
												class="cell price ng-binding"
												ng-bind="row.food.price * row.food.quantity | number:2">12.50</span>
										</div>
										<!-- ngSwitchWhen: extra -->
									</div>
									<!-- end ngRepeat: row in totalList -->
									<div ng-repeat="row in totalList" ng-switch="" on="row.type"
										class="ng-scope">
										<!-- ngSwitchWhen: baseline -->
										<div ng-switch-when="baseline"
											class="orderprogress-baseline ng-scope"></div>
										<!-- ngSwitchWhen: basketTitle -->
										<!-- ngSwitchWhen: food -->
										<!-- ngSwitchWhen: extra -->
									</div>
									<!-- end ngRepeat: row in totalList -->
									<div ng-repeat="row in totalList" ng-switch="" on="row.type"
										class="ng-scope">
										<!-- ngSwitchWhen: baseline -->
										<!-- ngSwitchWhen: basketTitle -->
										<!-- ngSwitchWhen: food -->
										<!-- ngSwitchWhen: extra -->
										<div ng-switch-when="extra"
											class="orderprogress-totalrow ng-scope">
											<span class="cell name ng-binding" ng-bind="row.extra.name">餐盒</span>
											<span class="cell quantity"></span> <span
												class="cell price ng-binding"
												ng-class="{minus: row.extra.price < 0}"
												ng-bind="row.extra.price | number:2">1.50</span>
										</div>
									</div>
									<!-- end ngRepeat: row in totalList -->
									<div ng-repeat="row in totalList" ng-switch="" on="row.type"
										class="ng-scope">
										<!-- ngSwitchWhen: baseline -->
										<!-- ngSwitchWhen: basketTitle -->
										<!-- ngSwitchWhen: food -->
										<!-- ngSwitchWhen: extra -->
										<div ng-switch-when="extra"
											class="orderprogress-totalrow ng-scope">
											<span class="cell name ng-binding" ng-bind="row.extra.name">在线支付立减优惠</span>
											<span class="cell quantity"></span> <span
												class="cell price ng-binding minus"
												ng-class="{minus: row.extra.price < 0}"
												ng-bind="row.extra.price | number:2">-1.00</span>
										</div>
									</div>
									<!-- end ngRepeat: row in totalList -->
									<div ng-repeat="row in totalList" ng-switch="" on="row.type"
										class="ng-scope">
										<!-- ngSwitchWhen: baseline -->
										<!-- ngSwitchWhen: basketTitle -->
										<!-- ngSwitchWhen: food -->
										<!-- ngSwitchWhen: extra -->
										<div ng-switch-when="extra"
											class="orderprogress-totalrow ng-scope">
											<span class="cell name ng-binding" ng-bind="row.extra.name">超级会员专享</span>
											<span class="cell quantity"></span> <span
												class="cell price ng-binding minus"
												ng-class="{minus: row.extra.price < 0}"
												ng-bind="row.extra.price | number:2">-5.00</span>
										</div>
									</div>
									<!-- end ngRepeat: row in totalList -->
									<div ng-repeat="row in totalList" ng-switch="" on="row.type"
										class="ng-scope">
										<!-- ngSwitchWhen: baseline -->
										<div ng-switch-when="baseline"
											class="orderprogress-baseline ng-scope"></div>
										<!-- ngSwitchWhen: basketTitle -->
										<!-- ngSwitchWhen: food -->
										<!-- ngSwitchWhen: extra -->
									</div>
									<!-- end ngRepeat: row in totalList -->
									<div class="orderprogress-totalactual">
										实际支付：<span ng-bind="order.total_amount | number:2"
											class="ng-binding">16.88</span>
									</div>
								</div>
							</div>
							<div class="orderprogress-cardcell rightside ng-isolate-scope"
								orderprogress-deliveryinfo="" link="orderReady">
								<div class="orderprogress-deliveryinfo">
									<h5 class="orderprogress-deliverytitle">配送信息</h5>
									<div class="orderprogress-deliverygroup">
										<p>
											<span class="orderprogress-deliverykey">配送方式：</span> <span
												class="ng-binding">祥记自选快餐砂锅麻辣烫提供配送服务</span>
										</p>
										<p>
											<span class="orderprogress-deliverykey">送达时间：</span> <span
												ng-bind="order.detail_info.deliver_description"
												class="ng-binding">尽快送出</span>
										</p>
									</div>
									<div class="orderprogress-deliverygroup">
										<p>
											<span class="orderprogress-deliverykey">联 系 人：</span> <span
												ng-bind="order.detail_info.consignee" class="ng-binding">周子珊(女士)</span>
										</p>
										<p>
											<span class="orderprogress-deliverykey">联系电话：</span> <span
												ng-bind="order.detail_info.phone" class="ng-binding">18200863646</span>
										</p>
										<p>
											<span class="orderprogress-deliverykey">收货地址：</span> <span
												ng-bind="order.detail_info.address" class="ng-binding">三宝墟教职工新村（D栋B梯）1050栋204号</span>
										</p>
									</div>
									<div class="orderprogress-deliverygroup tail">
										<p>
											<span class="orderprogress-deliverykey">发票信息：</span> <span
												ng-bind="order.detail_info.invoice || '无发票'"
												class="ng-binding">无发票</span>
										</p>
										<p>
											<span class="orderprogress-deliverykey">备 注：</span> <span
												ng-bind="order.detail_info.description || '无备注'"
												class="ng-binding">无备注</span>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="orderprogress-roundborder"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
</body>
</html>
