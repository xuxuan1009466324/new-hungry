<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="eleme" perf-error="desktop/" class="ng-scope">
<head>
<base href="${pageContext.request.contextPath}/">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">
<title ng-bind="SEO.title" class="ng-binding">饿了么-网上订餐_外卖_饿了么订餐官网</title>


<link rel="shortcut icon" href="statics/images/favicon-16x16.png"
	type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png"
	type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png"
	type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png"
	sizes="96x96">

<script src="statics/js/api" data-ref="API_CONFIG"></script>
<script src="statics/js/perf.js" type="text/javascript"
	crossorigin="anonymous"></script>
<!-- <script src="statics/js/vendor.4d50a6.js" type="text/javascript"
	crossorigin="anonymous"></script> -->
<script src="statics/js/main.956670.js" type="text/javascript"
	crossorigin="anonymous"></script>

<link media="all" href="statics/css/Settlement.css" type="text/css"
	rel="stylesheet">
</head>
<body cute-title=""
	ng-class="{hidesidebar: layoutState &amp;&amp; layoutState.hideSidebar, smallbody: layoutState.smallBody, whitebody: layoutState.whiteBody}"
	style="position: relative;" class="hidesidebar">

	<div ng-switch="state.type" state="layoutState"
		class="ng-isolate-scope">
		<!-- ngSwitchWhen: checkout -->
		<header class="carttopbar" ng-switch-when="checkout"
			topbar-checkout="" state="state">
		<div class="carttopbar-nav container clearfix">
			<span class="carttopbar-nav-path">当前位置：<a
				ng-href="/place/ws0egs6hts4"
				ng-bind="$root.place.name || $root.place.address" class="ng-binding"
				href="https://www.ele.me/place/ws0egs6hts4">天河区教师新村(天源路南)</a> <i
				class="icon-arrow-right"></i> <a class="inherit ng-binding"
				ng-href="/shop/642483" ng-bind="state.rstName"
				ng-show="state.rstName" href="https://www.ele.me/shop/642483">大亨挪威三文鱼（长湴店）</a>
				<i class="icon-arrow-right" ng-show="state.rstName"></i> 订单信息
			</span>
			<div topbar-profilebox="">
				<div class="topbar-profilebox">
					<!-- ngIf: $root.user.avatar && $root.topbarType !== 'checkout' -->
					<span class="topbar-profilebox-avatar icon-profile ng-hide"
						ng-show="!$root.user.username"></span> <span
						ng-show="!$root.user.username" class="ng-hide"><a
						ng-href="//h5.ele.me/login/#redirect=https%3A%2F%2Fwww.ele.me%2Fcart%2Fcheckout"
						target="_top"
						href="https://h5.ele.me/login/#redirect=https%3A%2F%2Fwww.ele.me%2Fcart%2Fcheckout">登录/注册</a></span>
					<span class="topbar-profilebox-wrapper"
						ng-show="$root.user.username"> <!-- ngIf: $root.topbarType === 'checkout' -->
						<span class="topbar-profilebox-username ng-binding">43de99ffa</span>
						<!-- ngIf: $root.topbarType === 'checkout' --> <!-- ngIf: $root.topbarType !== 'checkout' -->
						<span class="topbar-profilebox-btn icon-arrow-down ng-scope"
						ng-if="$root.topbarType !== 'checkout'"></span> <!-- end ngIf: $root.topbarType !== 'checkout' -->
						<div class="dropbox topbar-profilebox-dropbox">
							<a class="icon-profile" href="personalCenter.jsp" hardjump="">个人中心</a>
							<a class="icon-star" href="favorite.jsp" hardjump="">我的收藏</a> <a
								class="icon-location" href="addressManage.jsp" hardjump="">我的地址</a>
							<a class="icon-setting" href="securityCenter.jsp" hardjump="">安全设置</a>
							<a class="icon-logout" href="login.jsp" ng-click="logout()">退出登录</a>
						</div>
					</span>
				</div>
			</div>
		</div>
		</header>
		<!-- ngSwitchDefault:  -->
	</div>
	<div class="importantnotification container" role="banner">
		<!-- ngIf: enable -->
	</div>
	<div class="sidebar ng-hide" role="complementary"
		ng-hide="layoutState &amp;&amp; layoutState.hideSidebar">
		<div class="sidebar-tabs">
			<div class="toolbar-tabs-middle">
				<a class="toolbar-btn icon-order toolbar-close"
					href="https://www.ele.me/profile/order" hardjump="" tooltip="我的订单"
					tooltip-placement="left" ubt-click="toolbar_order"> <!-- ngIf: sidebarCount.uncompletedOrder > 0 -->
				</a>
				<div class="toolbar-separator"></div>
				<a
					class="toolbar-cartbtn icon-cart toolbar-open toolbar-cartbtn-shownum"
					href="javascript:" template="cart"
					ng-class="{'focus': (activeTemplate === 'cart' &amp;&amp; isSidebarOpen), 'toolbar-cartbtn-shownum': foodCount.count}"
					ubt-click="390">购物车<!-- ngIf: foodCount.count --> <i
					class="toolbar-cartnum ng-binding ng-scope" ng-if="foodCount.count"
					ng-bind="foodCount.count">1</i> <!-- end ngIf: foodCount.count --></a>
				<div class="toolbar-separator"></div>
				<a class="toolbar-btn icon-notice toolbar-open modal-hide"
					href="javascript:" template="message"
					ng-class="{'focus': (activeTemplate === 'message' &amp;&amp; isSidebarOpen), 'toolbar-open': user, 'modal-hide': user}"
					tooltip="我的信息" tooltip-placement="left" ubt-click="392"> <!-- ngIf: messageCount.count -->
				</a>
			</div>
			<div class="toolbar-tabs-bottom">
				<div class="toolbar-btn icon-QR-code">
					<div class="dropbox toolbar-tabs-dropbox">
						<a
							href="http://static11.elemecdn.com/eleme/desktop/mobile/index.html"
							target="_top"><img src="statics/images/appqc.95e532.png"
							alt="下载手机应用">
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
		</div>
	</div>
	<!-- ngView:  -->
	<div ng-view="" role="main" class="ng-scope">
		<div class="checkoutguide ng-isolate-scope" checkout-guide=""
			guide="guide">
			<div class="container">
				<a class="checkoutguide-logo icon-logo" href="homePage.jsp"></a> <span
					class="checkoutguide-text ng-binding" ng-bind="guide.text">订单信息</span>
				<!-- ngIf: guide.step -->
				<div class="checkoutguide-content step2" ng-if="guide.step">
					<span class="checkoutguide-item active"
						ng-class="{active: guide.step >= 1}">选择商品</span> <span
						class="checkoutguide-item active"
						ng-class="{active: guide.step >= 2}">确认订单信息</span> <span
						class="checkoutguide-item" ng-class="{active: guide.step >= 3}">成功提交订单</span>
					<p class="checkoutguide-line">
						<span class="line line1"></span> <span class="line line2"></span>
						<span class="line line3"></span> <span class="line line4"></span>
					</p>
				</div>
				<!-- end ngIf: guide.step -->
			</div>
		</div>
		<div class="container clearfix ng-scope">
			<!-- ngIf: loading -->
			<!-- ngIf: !loading && nofood -->
			<!-- ngIf: !loading && !nofood -->
			<div ng-if="!loading &amp;&amp; !nofood"
				class="checkout-cart ng-scope ng-isolate-scope" checkout-cart="cart">
				<div class="checkoutcart-container">
					<div class="checkoutcart-title">
						<h2>订单详情</h2>
						<a ng-href="/shop/642483" href="https://www.ele.me/shop/642483">&lt;
							返回商家修改</a>
					</div>
					<div class="checkoutcart-tablerow tablehead">
						<div class="cell itemname">商品</div>
						<div class="cell itemquantity">份数</div>
						<div class="cell itemtotal">小计（元）</div>
					</div>
					<!-- ngRepeat: basket in cart.vm.group -->
					<!-- ngIf: basket.length -->
					<dl ng-if="basket.length" ng-repeat="basket in cart.vm.group"
						class="checkoutcart-group ng-scope">
						<dt ng-bind="$index + 1 + '号购物车'"
							class="checkoutcart-grouptitle ng-binding">1号购物车</dt>
						<!-- ngRepeat: item in basket -->
						<dd ng-repeat="item in basket" class="ng-scope">
							<div class="checkoutcart-tablerow">
								<div class="cell itemname ng-binding" ng-bind="item.name"
									title="三文鱼鱼柳-500g净肉">三文鱼鱼柳-500g净肉</div>
								<div class="cell itemquantity">
									<button ng-click="cart.sub(item)">-</button>
									<input ng-model="item.quantity" ng-change="cart.update(item)"
										ng-blur="cart.blur(item)" class="ng-pristine ng-valid"
										value="1">
									<button ng-click="cart.add(item)">+</button>
								</div>
								<div class="cell itemtotal ng-binding"
									ng-bind="'¥' + (item.price * item.quantity | number:2)">¥126.00</div>
							</div>
						</dd>
						<!-- end ngRepeat: item in basket -->
					</dl>
					<!-- end ngIf: basket.length -->
					<!-- end ngRepeat: basket in cart.vm.group -->
					<!-- ngIf: cart.vm.extra || cart.vm.records -->
					<ul ng-if="cart.vm.extra || cart.vm.records" class="ng-scope">
						<!-- ngRepeat: item in cart.vm.extra -->
						<li ng-repeat="item in cart.vm.extra"
							class="checkoutcart-tablerow extra ng-scope"><div
								class="cell itemname">
								<span ng-bind="item.name" title="配送费" class="ng-binding">配送费</span>
								<!-- ngIf: item.name === '配送费' -->
								<span ng-if="item.name === '配送费'"
									class="icon-circle-help ng-scope" tooltip=""
									tooltip-placement="left"></span>
								<!-- end ngIf: item.name === '配送费' -->
							</div>
							<div class="cell itemquantity"></div>
							<div class="cell itemtotal ng-binding"
								ng-class="{minus: item.price < 0}"
								ng-bind="'¥' + (item.price | number:2)">¥11.00</div></li>
						<!-- end ngRepeat: item in cart.vm.extra -->
						<!-- ngRepeat: item in cart.vm.records -->
					</ul>
					<!-- end ngIf: cart.vm.extra || cart.vm.records -->
					<div class="checkoutcart-total color-stress">
						¥<span class="num ng-binding" ng-bind="cart.vm.total | number: 2">137.00</span>
					</div>
					<div class="checkoutcart-totalextra">
						共 <span ng-bind="cart.pieces" class="ng-binding">1</span> 份商品
						<!-- ngIf: cart.vm.benefit -->
					</div>
				</div>
			</div>
			<!-- end ngIf: !loading && !nofood -->
			<!-- ngIf: !loading && !nofood -->
			<div ng-if="!loading &amp;&amp; !nofood"
				class="checkout-content ng-scope">
				<div class="checkout-select ng-isolate-scope" checkout-address=""
					checkout-data="checkoutData" address-list="addressList"
					address="address" isbaisheng="isBaishengRst">
					<h2>
						收货地址 <a ng-show="addressList.length" class="checkout-addaddress"
							href="javascript:" ng-click="addAddress()">添加新地址</a>
					</h2>
					<!-- ngIf: !addressList.length -->
					<ul ng-hide="!addressList.length" class="checkout-address-list"
						ng-class="{ showmore: showMoreAddress, showfirst: noInitAddress }">
						<!-- ngRepeat: item in addressList -->
						<li class="checkout-address ng-scope active"
							ng-repeat="item in addressList"
							ng-click="selectAddress($event, item)"
							ng-class="{active: address.id === item.id}"
							ng-mouseenter="selectAddress($event, item)"><i
							class="checkout-address-icon icon-location-line"></i>
							<div class="checkout-address-info">
								<p
									ng-bind="item.name + [' ', ' 先生 ', ' 女士 '][item.sex] + item.phone"
									class="ng-binding">钟 18218590202</p>
								<p class="color-weak ng-binding"
									ng-bind="item.address + item.address_detail">三宝墟教职工新村天源路沙河兆联教职工新村
									I栋B梯103</p>
							</div>
							<div class="checkout-address-edit">
								<a href="javascript:" ng-click="editAddress($event, item)">修改</a>
								<a href="javascript:" ng-click="removeAddress($event, item)">×</a>
							</div> <!-- ngIf: !item.st_geohash --> <!-- ngIf: !item.is_deliverable -->
							<!-- ngIf: item.st_geohash && item.poi_type === 1 && isbaisheng --></li>
						<!-- end ngRepeat: item in addressList -->
						<li class="checkout-address ng-scope"
							ng-repeat="item in addressList"
							ng-click="selectAddress($event, item)"
							ng-class="{active: address.id === item.id}"
							ng-mouseenter="selectAddress($event, item)"><i
							class="checkout-address-icon icon-location-line"></i>
							<div class="checkout-address-info">
								<p
									ng-bind="item.name + [' ', ' 先生 ', ' 女士 '][item.sex] + item.phone"
									class="ng-binding">钟 先生 18218590202</p>
								<p class="color-weak ng-binding"
									ng-bind="item.address + item.address_detail">三宝墟教职工新村天源路沙河兆联教职工新村
									F栋B梯 1036号 503房</p>
							</div>
							<div class="checkout-address-edit">
								<a href="javascript:" ng-click="editAddress($event, item)">修改</a>
								<a href="javascript:" ng-click="removeAddress($event, item)">×</a>
							</div> <!-- ngIf: !item.st_geohash --> <!-- ngIf: !item.is_deliverable -->
							<!-- ngIf: item.st_geohash && item.poi_type === 1 && isbaisheng --></li>
						<!-- end ngRepeat: item in addressList -->
						<li class="checkout-address ng-scope"
							ng-repeat="item in addressList"
							ng-click="selectAddress($event, item)"
							ng-class="{active: address.id === item.id}"
							ng-mouseenter="selectAddress($event, item)"><i
							class="checkout-address-icon icon-location-line"></i>
							<div class="checkout-address-info">
								<p
									ng-bind="item.name + [' ', ' 先生 ', ' 女士 '][item.sex] + item.phone"
									class="ng-binding">钟 先生 18218590202</p>
								<p class="color-weak ng-binding"
									ng-bind="item.address + item.address_detail">维也纳3好酒店(广州华南植物园店)天源路793号
									五楼</p>
							</div>
							<div class="checkout-address-edit">
								<a href="javascript:" ng-click="editAddress($event, item)">修改</a>
								<a href="javascript:" ng-click="removeAddress($event, item)">×</a>
							</div> <!-- ngIf: !item.st_geohash --> <!-- ngIf: !item.is_deliverable -->
							<!-- ngIf: item.st_geohash && item.poi_type === 1 && isbaisheng --></li>
						<!-- end ngRepeat: item in addressList -->
						<li class="checkout-address ng-scope"
							ng-repeat="item in addressList"
							ng-click="selectAddress($event, item)"
							ng-class="{active: address.id === item.id}"
							ng-mouseenter="selectAddress($event, item)"><i
							class="checkout-address-icon icon-location-line"></i>
							<div class="checkout-address-info">
								<p
									ng-bind="item.name + [' ', ' 先生 ', ' 女士 '][item.sex] + item.phone"
									class="ng-binding">钟 先生 18218590202</p>
								<p class="color-weak ng-binding"
									ng-bind="item.address + item.address_detail">教师新村实际地址：维也纳酒店五楼（华南植物园店）天源路793号</p>
							</div>
							<div class="checkout-address-edit">
								<a href="javascript:" ng-click="editAddress($event, item)">修改</a>
								<a href="javascript:" ng-click="removeAddress($event, item)">×</a>
							</div> <!-- ngIf: !item.st_geohash --> <!-- ngIf: !item.is_deliverable -->
							<!-- ngIf: item.st_geohash && item.poi_type === 1 && isbaisheng --></li>
						<!-- end ngRepeat: item in addressList -->
						<a class="checout-showmoreaddress" href="javascript:"
							ng-click="showMoreAddress = true"
							ng-show="!showMoreAddress &amp;&amp; addressList.length > 1">显示更多地址<i
							class="icon-arrow-down"></i></a>
						<a class="checout-showmoreaddress ng-hide" href="javascript:"
							ng-click="showMoreAddress = false"
							ng-show="showMoreAddress &amp;&amp; addressList.length > 1">收起<i
							class="icon-arrow-up"></i></a>
					</ul>
				</div>
				<div class="checkout-select">
					<h2 class="checkout-title">
						付款方式<span class="color-tip checkout-pay-tip">推荐使用在线支付，不用找零，优惠更多</span>
					</h2>
					<ul class="clearfix">
						<!-- ngRepeat: pay in payList -->
						<li class="checkout-pay ng-scope active"
							ng-repeat="pay in payList"
							ng-click="selectPay(pay.id, pay.disabled)"
							ng-class="{active: payId === pay.id, disabled: pay.disabled}"
							tooltip=""><p ng-bind="pay.title" class="ng-binding">在线支付</p>
							<p class="color-mute ng-binding" ng-bind="pay.tip">支持微信、支付宝、QQ钱包及大部分银行卡</p></li>
						<!-- end ngRepeat: pay in payList -->
						<li class="checkout-pay ng-scope disabled"
							ng-repeat="pay in payList"
							ng-click="selectPay(pay.id, pay.disabled)"
							ng-class="{active: payId === pay.id, disabled: pay.disabled}"
							tooltip="该商家仅支持在线支付"><p ng-bind="pay.title"
								class="ng-binding">货到付款</p>
							<p class="color-mute ng-binding" ng-bind="pay.tip">送货上门后再付款</p></li>
						<!-- end ngRepeat: pay in payList -->
					</ul>
				</div>
				<div class="checkout-select">
					<h2 class="checkout-title">选择优惠</h2>
					<p class="checkout-info">
						<span class="checkout-infolabel">使用红包</span> <span
							class="color-mute">无可用红包<!-- ngIf: checkout.hongbaoCount --></span>
					</p>
					<p class="checkout-info">
						<span class="checkout-infolabel">使用优惠券</span> <span
							class="color-mute">网站不支持<em class="color-stress">（仅手机客户端可用）</em></span>
					</p>
				</div>
				<div class="checkout-select">
					<h2 class="checkout-title">其他信息</h2>
					<div class="checkout-info">
						<span class="checkout-infolabel">配送方式</span> <span>本订单由<a
							ng-bind="' [' + delivery + '] '" class="ng-binding">
								[大亨挪威三文鱼（长湴店）] </a>提供配送
						</span>
					</div>
					<div class="checkout-info" ng-show="showDeliverTime">
						<span class="checkout-infolabel">送达时间</span>
						<div class="formselect ng-isolate-scope" formselect=""
							data="bookTimes" choosed="time" selectfn="updateDeliverTime">
							<span class="formselect-value ng-binding">立即送达</span>
							<div class="formselect-data ui-scrollbar-light">
								<!-- ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope active">立即送达<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">11:15 - 11:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">11:30 - 11:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">11:45 - 12:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">12:00 - 12:15<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">12:15 - 12:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">12:30 - 12:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">12:45 - 13:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">13:00 - 13:15<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">13:15 - 13:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">13:30 - 13:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">13:45 - 14:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">14:00 - 14:15<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">14:15 - 14:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">14:30 - 14:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">14:45 - 15:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">15:00 - 15:15<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">15:15 - 15:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">15:30 - 15:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">15:45 - 16:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">16:00 - 16:15<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">16:15 - 16:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">16:30 - 16:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">16:45 - 17:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">17:00 - 17:15<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">17:15 - 17:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">17:30 - 17:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">17:45 - 18:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">18:00 - 18:15<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">18:15 - 18:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">18:30 - 18:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">18:45 - 19:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">19:00 - 19:15<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">19:15 - 19:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">19:30 - 19:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">19:45 - 20:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">20:00 - 20:15<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">20:15 - 20:30<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">20:30 - 20:45<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
								<span ng-repeat="item in data" ng-click="select($event, item)"
									ng-class="{active: (selected === item &amp;&amp; !item.disabled), disabled: item.disabled}"
									class="ng-binding ng-scope">20:45 - 21:00<i
									class="icon-check"></i></span>
								<!-- end ngRepeat: item in data -->
							</div>
							<i class="icon-arrow-down"></i>
						</div>
					</div>
					<div class="checkout-info">
						<span class="checkout-infolabel">发票信息</span> <span
							class="checkout-invoice" ng-mouseenter="toggleInvoice($event)"
							ng-mouseleave="toggleInvoice($event)"><input
							class="checkout-input ng-pristine ng-valid"
							placeholder="仅在饿了么 APP 中支持开发票哦"
							ng-disabled="!checkoutData.invoice.is_available"
							ng-model="invoiceRef.invoiceValue"
							ng-change="updateInvoice(invoiceRef.invoiceValue)"
							disabled="disabled" value="">
							<ul class="checkout-invoice-list ng-hide" ng-show="showInvoice">
								<!-- ngRepeat: item in invoices -->
							</ul></span>
					</div>
					<div class="checkout-info">
						<span class="checkout-infolabel">订单备注</span> <span><input
							class="checkout-input ng-pristine ng-valid" ng-model="note"
							ng-change="updateDescription(note)" value=""></span>
					</div>
				</div>
				<div>
					<a href="payment.jsp"><button quicksubmit-trigger=""
							submit-visable="checkout.submitVisable"
							class="btn-stress btn-lg ng-binding ng-isolate-scope"
							ng-disabled="orderButton.disabled" ng-bind="orderButton.text"
							ng-click="orderSubmit()">确认下单</button></a>
					<div class="checkout-dapp">
						<p class="checkout-dapp-tip">
							扫码下载APP<br>APP下单立享优惠
						</p>
						<i class="icon-qrcode checkout-dapp-qrcode"></i> <i
							class="icon-uniE029 checkout-dapp-arrow"></i> <img
							src="statics/images/appqc.95e532.png" alt="扫一扫下载饿了么手机 App">
					</div>
				</div>
			</div>
			<!-- end ngIf: !loading && !nofood -->
		</div>
		<div class="checkout-quicksubmit ng-scope"
			ng-hide="checkout.submitVisable || nofood">
			<div class="container">
				<span class="quick-text">应付金额 <span class="yen">¥</span><span
					class="total ng-binding" ng-bind="cartView.vm.total">137</span></span> <a
					href="payment.jsp"><button class="btn-stress btn-lg ng-binding"
						ng-disabled="orderButton.disabled" ng-bind="orderButton.text"
						ng-click="orderSubmit()">确认下单</button></a>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
	<script src="statics/js/home"></script>
</body>
</html>
