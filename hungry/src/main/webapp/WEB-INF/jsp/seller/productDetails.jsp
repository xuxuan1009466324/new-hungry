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
	- 广州市白云区京溪街京溪中路30号04档</title>


<link rel="shortcut icon" href="statics/images/favicon-16x16.png" type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png" sizes="96x96">

<!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->

<link media="all" href="statics/css/productDetails.css" type="text/css"
	rel="stylesheet">
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
			<header class="topbar shoptopbar" role="navigation"
				ng-class="{shoptopbar: state.type === 'shop'}">
			<div class="container clearfix">
				<h1>
					<a href="https://www.ele.me/" hardjump=""
						class="topbar-logo icon-logo"><span>饿了么</span></a>
				</h1>
				<a href="https://www.ele.me/" hardjump=""
					class="topbar-item topbar-homepage"
					ng-class="{'focus': $root.locationpath[0] === 'place'}">首页</a> <a
					href="https://www.ele.me/profile/order" hardjump=""
					class="topbar-item"
					ng-class="{'focus': $root.locationpath[1] === 'order'}">我的订单</a> <a
					href="https://h5.ele.me/service/cooperation/" target="_top"
					class="topbar-item cooperation">加盟合作</a>
				<nav class="topbar-nav"> <a
					ng-href="//h5.ele.me/service/agreement" hardjump=""
					class="topbar-nav-link" target="_top"
					href="https://h5.ele.me/service/agreement">规则中心</a>
				<div class="topbar-nav-link">
					<i class="topbar-nav-icon icon-mobile"></i>手机应用
					<div class="dropbox topbar-mobile-dropbox">
						<span>扫一扫, 手机订餐更方便</span> <img
							src="statics/images/appqc.95e532.png" class="topbar-nav-qrcode"
							alt="扫一扫下载饿了么手机 App">
					</div>
				</div>
				<div topbar-profilebox="">
					<div class="topbar-profilebox">
						<!-- ngIf: $root.user.avatar && $root.topbarType !== 'checkout' -->
						<span class="topbar-profilebox-avatar icon-profile"
							ng-show="!$root.user.username"></span> <span
							ng-show="!$root.user.username" class=""><a
							ng-href="//h5.ele.me/login/#redirect=https%3A%2F%2Fwww.ele.me%2Fshop%2F157017017"
							target="_top"
							href="https://h5.ele.me/login/#redirect=https%3A%2F%2Fwww.ele.me%2Fshop%2F157017017">登录/注册</a></span>
						<span class="topbar-profilebox-wrapper ng-hide"
							ng-show="$root.user.username"> <!-- ngIf: $root.topbarType === 'checkout' -->
							<span class="topbar-profilebox-username ng-binding"></span> <!-- ngIf: $root.topbarType === 'checkout' -->
							<!-- ngIf: $root.topbarType !== 'checkout' --> <span
							class="topbar-profilebox-btn icon-arrow-down ng-scope"
							ng-if="$root.topbarType !== 'checkout'"></span> <!-- end ngIf: $root.topbarType !== 'checkout' -->
							<div class="dropbox topbar-profilebox-dropbox">
								<a class="icon-profile" href="https://www.ele.me/profile"
									hardjump="">个人中心</a> <a class="icon-star"
									href="https://www.ele.me/profile/favor" hardjump="">我的收藏</a> <a
									class="icon-location" href="https://www.ele.me/profile/address"
									hardjump="">我的地址</a> <a class="icon-setting"
									href="https://www.ele.me/profile/security" hardjump="">安全设置</a>
								<a class="icon-logout" href="javascript:" ng-click="logout()">退出登录</a>
							</div>
						</span>
					</div>
				</div>
				</nav>
			</div>
			</header>
		</div>
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
				<a class="toolbar-cartbtn icon-cart toolbar-open" href="javascript:"
					template="cart"
					ng-class="{'focus': (activeTemplate === 'cart' &amp;&amp; isSidebarOpen), 'toolbar-cartbtn-shownum': foodCount.count}"
					ubt-click="390">购物车<!-- ngIf: foodCount.count --></a>
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
						<a class="shopnav-tab active"
							href="https://www.ele.me/shop/157017017"
							ng-class="{active: shop.tab === 'index'}">所有商品</a> <a
							class="shopnav-tab" href="https://www.ele.me/shop/157017017/rate"
							ng-class="{active: shop.tab === 'rate'}">评价</a> <a
							class="shopnav-tab" href="https://www.ele.me/shop/157017017/info"
							ng-class="{active: shop.tab === 'info'}">商家资质</a>
						<!-- ngIf: shopAction === 'menu' -->
						<span class="shopnav-filter ng-scope"
							ng-if="shopAction === 'menu'"><a href="javascript:"
							ng-click="filter('default')"
							ng-class="{active: filterData === 'default'}" class="active">默认排序</a>
							<a href="javascript:" ng-click="filter('-rating')"
							ng-class="{active: filterData === '-rating'}">评分 <i
								class="icon-uniE02D"></i></a> <a href="javascript:"
							ng-click="filter('-month_sales')"
							ng-class="{active: filterData === '-month_sales'}">销量 <i
								class="icon-uniE02D"></i></a> <a href="javascript:"
							ng-click="filter('-price')"
							ng-class="{active: filterData === '-price' || filterData === 'price'}">价格
								<i class="icon-uniE02D" ng-hide="filterData === 'price'"></i> <i
								class="icon-uniE02C ng-hide" ng-show="filterData === 'price'"></i>
						</a> <span><a class="shopnav-filter-display icon-grid active"
								href="javascript:" title="以网格形式显示菜单"
								ng-click="changeDisplayType('grid')"
								ng-class="{active: displayType === 'grid'}"></a> <a
								class="shopnav-filter-display icon-list" href="javascript:"
								title="以列表形式显示菜单" ng-click="changeDisplayType('list')"
								ng-class="{active: displayType === 'list'}"></a></span></span>
						<!-- end ngIf: shopAction === 'menu' -->
					</div>
					<div class="shopnav-search">
						<form class="place-search ng-pristine ng-valid" role="search"
							ng-submit="search()" action="https://www.ele.me/shop/157017017">
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
			<div ng-if="shopAction === 'menu'" shop-menu=""
				shop-cache="shopCache" filter-data="shop.filter"
				display-type="shop.displayType" class="shopmenu ng-isolate-scope"
				perf-click="desktop/201">
				<div class="loading ng-binding ng-isolate-scope ng-hide" loading=""
					ng-show="loading">
					<!-- ngIf: type==='profile' -->
					<img ng-if="type==='profile'"
						src="statics/images/profile-loading.4984fa.gif" alt="正在加载"
						class="ng-scope">
					<!-- end ngIf: type==='profile' -->
					<!-- ngIf: type==='normal' -->
					正在载入数据...
				</div>
				<div ng-show="!loading &amp;&amp; !searchEnv"
					class="shopmenu-nav ng-isolate-scope" sticky=""
					sticky-class="sticky" sticky-body-class="shopmenu-nav-sticky"
					sticky-fn="shopNavSticky">
					<!-- ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">热销</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">优惠</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">扫码免费领红包</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">杭州小笼包</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">特色小吃</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">花式炒饭</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">心满意粥</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">瓦罐养生汤</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">炒粉（面）类</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">上帝要求加在炒饭里</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">实惠套餐</a>
					<!-- end ngRepeat: category in categorys -->
					<a href="javascript:" ng-repeat="category in categorys"
						ng-click="scrollToCategory(category)"
						ng-class="{active: currentCategory.id === category.id}"
						class="ng-binding ng-scope">酒水饮料（单点此类产品不配送）</a>
					<!-- end ngRepeat: category in categorys -->
				</div>

				<div ng-show="!loading" class="shopmenu-main grid"
					ng-class="{grid: displayType === 'grid', list: displayType === 'list'}">
					<!-- ngIf: filterData === 'default' && !searchEnv -->
					<div ng-if="filterData === 'default' &amp;&amp; !searchEnv"
						class="ng-scope">
						<!-- ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								热销 <span class="shopmenu-des ng-binding">大家喜欢吃，才叫真好吃。</span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="698138072"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="statics/images/7c879549890f915a236c048cc8a37jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="招牌小笼包的图片"
										src="statics/images/7c879549890f915a236c048cc8a37jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">招牌小笼包</h3>
									<p class="color-mute ui-ellipsis ng-binding"
										tooltip="纯手工制作，食材新鲜，味道鲜美，是你不错的选择">纯手工制作，食材新鲜，味道鲜美，是你不错的选择</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.2分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 83.6%;"></span>
									</div>
									<span class="color-mute ng-binding">(104)</span> <span
										class="color-mute ng-binding">月售719份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">7<small
									class="ng-binding"></small> <!-- ngIf: food.min_purchase && food.min_purchase > 1 --></span>
								<span class="col-4"><div shop-cartbutton="" food="food"
										ng-hide="shop.id == '656683'" class="ng-isolate-scope">
										<!-- ngIf: !menuFood.hasSpec -->
										<div ng-if="!menuFood.hasSpec" class="ng-scope">
											<!-- ngIf: !cartItem.quantity && menuFood.stock -->
											<a class="shop-cartbutton ng-binding ng-scope" href="shoppingCart.jsp"
												ng-if="!cartItem.quantity &amp;&amp; menuFood.stock"
												ng-click="cartItem.add($event)">加入购物车</a>
											<!-- end ngIf: !cartItem.quantity && menuFood.stock -->
											<!-- ngIf: !menuFood.stock -->
											<!-- ngIf: cartItem.quantity > 0 || cartItem.quantity === '' -->
										</div>
										<!-- end ngIf: !menuFood.hasSpec -->
										<!-- ngIf: menuFood.hasSpec -->
									</div></span>
							</div>
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="698798467"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="statics/images/b2a75785a41635061297c34a355aajpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="杭州小笼包的图片"
										src="statics/images/b2a75785a41635061297c34a355aajpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">杭州小笼包</h3>
									<p class="color-mute ui-ellipsis ng-binding"
										tooltip="跟招牌小笼包是一样的">跟招牌小笼包是一样的</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.2分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 83.2%;"></span>
									</div>
									<span class="color-mute ng-binding">(102)</span> <span
										class="color-mute ng-binding">月售712份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">7<small
									class="ng-binding"></small> <!-- ngIf: food.min_purchase && food.min_purchase > 1 --></span>
								<span class="col-4"><div shop-cartbutton="" food="food"
										ng-hide="shop.id == '656683'" class="ng-isolate-scope">
										<!-- ngIf: !menuFood.hasSpec -->
										<div ng-if="!menuFood.hasSpec" class="ng-scope">
											<!-- ngIf: !cartItem.quantity && menuFood.stock -->
											<button class="shop-cartbutton ng-binding ng-scope"
												ng-if="!cartItem.quantity &amp;&amp; menuFood.stock"
												ng-click="cartItem.add($event)">加入购物车</button>
											<!-- end ngIf: !cartItem.quantity && menuFood.stock -->
											<!-- ngIf: !menuFood.stock -->
											<!-- ngIf: cartItem.quantity > 0 || cartItem.quantity === '' -->
										</div>
										<!-- end ngIf: !menuFood.hasSpec -->
										<!-- ngIf: menuFood.hasSpec -->
									</div></span>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- end ngIf: filterData === 'default' && !searchEnv -->
		<!-- ngIf: filterData !== 'default' || searchEnv -->
		<div shop-cart="" cart-link="cartLink"
			ng-hide="shopCache.id == 656683" class="ng-isolate-scope">
			<div class="shop-cart">
				<div class="shop-cartbasket" id="shopbasket"
					style="top: -44px; height: auto;">
					<div shop-groupswitcher="" cart="shopCart" class="ng-isolate-scope">
						<!-- ngIf: shopCart.vm.groups.length > 1 -->
						<div class="shop-grouphead single"
							ng-class="{ single: shopCart.vm.groups.length === 1 }">
							<!-- ngIf: shopCart.vm.groups.length === 1 -->
							<a href="javascript:" class="icon-cart-add ng-scope"
								ng-if="shopCart.vm.groups.length === 1" ng-click="addGroup()"
								tooltip="添加购物车"></a>
							<!-- end ngIf: shopCart.vm.groups.length === 1 -->
							<!-- ngIf: showGuide && shopCart.vm.groups.length === 1 -->
							<div class="shop-groupguidetip ng-scope"
								ng-if="showGuide &amp;&amp; shopCart.vm.groups.length === 1">
								可以添加多个购物车，便于商家分类打包哦 <a class="icon-close"
									ng-click="closeGuide()"></a>
							</div>
							<!-- end ngIf: showGuide && shopCart.vm.groups.length === 1 -->
							<div class="shop-grouphead-row">
								<!-- ngIf: shopCart.vm.groups.length > 1 -->
								购物车 <a href="javascript:"
									ng-click="shopCart.clearGroup(shopCart.currentGroupIndex)">[清空]</a>
							</div>
						</div>
					</div>
					<!-- ngIf: !shopCart.vm.groups[shopCart.currentGroupIndex].length -->
					<div class="shop-cartbasket-empty ng-scope"
						ng-if="!shopCart.vm.groups[shopCart.currentGroupIndex].length">
						<div class="icon-cart"></div>
						<p>购物车是空的，赶紧选购吧</p>
					</div>
					<!-- end ngIf: !shopCart.vm.groups[shopCart.currentGroupIndex].length -->
					<!-- ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
					<!-- ngIf: shopCart.packingFee -->
				</div>
				<div class="shop-cartfooter" ng-click="shopCart.toggleCart()">
					<span class="icon-cart shop-carticon"> <!-- ngIf: shopCart.vm.quantity > 0 -->
					</span>
					<!-- ngIf: shopCart.vm.quantity > 0 -->
					<!-- ngIf: shopCart.vm.extras.length && !shopCart.vm.button.disabled -->
					<div class="shop-cartfooter-text extras ng-binding"
						ng-bind-html="shopCart.vm.picewiseText">配送费¥4</div>
					<button class="shop-cartfooter-checkout ng-binding disabled"
						ng-class="{disabled: shopCart.vm.button.name !== 'CAN_ORDER'}"
						ng-disabled="shopCart.vm.button.disabled"
						ng-bind="shopCart.vm.button.text" ng-click="checkout($event)"
						disabled="disabled">购物车是空的</button>
				</div>
				<div class="shop-carthelper-opener"
					ng-class="{show: shopCart.cartHelper.show}"
					ng-click="showCartHelper()"></div>
				<div class="shop-carthelper ng-isolate-scope" id="shophelper"
					shop-cart-helper="" group="shopCart.cartHelper.group"
					cart="shopCart">
					<div class="shopcarhelper-title clearfix">
						<span>凑一凑</span> <em>轻松凑满起送价</em> <a href="javascript:"
							ng-click="closeCartHelper()">[ 关闭 ]</a>
					</div>
					<div class="shopcarthelper-container ui-scrollbar-light">
						<!-- ngRepeat: item in group track by $index -->
					</div>
				</div>
				<div class="shop-flyitem"></div>
			</div>
		</div>
	</div>
	</div>
	<!-- end ngIf: shopAction === 'menu' -->
	<!-- ngIf: shopAction === 'rate' -->
	<!-- ngIf: shopAction === 'info' -->
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
					<form ng-submit="complaint()" class="ng-scope ng-pristine ng-valid"
						action="https://www.ele.me/shop/157017017">
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
		<a href="javascript:" class="sidetools-item icon-service" title="在线客服"
			tooltip="在线客服" tooltip-placement="left" online-service=""
			target="_top" style="visibility: visible;"></a> <a href="javascript:"
			class="sidetools-item icon-arrow-up" title="回到顶部" tooltip="回到顶部"
			tooltip-placement="left" ng-click="backToTop()"></a>
	</div>
	</div>

	<%@include file="../common/footer.jsp"%>

	<div
		style="position: fixed; left: 0px; top: 0px; width: 100%; height: 100%; opacity: 0.5; background: rgb(0, 0, 0) none repeat scroll 0% 0%; z-index: 1000;"></div>
	<div class="dialog" role="dialog" dialog="ITEMINFO"
		style="left: 270px; top: 138px; z-index: 1001;">
		<div class="dialog-close icon-close"></div>
		<div class="dialog-content" ng-transclude="">
			<div shop-iteminfo="" item-info="itemInfo"
				class="ng-scope ng-isolate-scope">
				<div class="shop-iteminfo">
					<div class="iteminfo-imagegroup">
						<img class="mainimage"
							ng-src="statics/images/7c879549890f915a236c048cc8a37jpeg.jpeg?imageMogr2/thumbnail/360x360"
							alt="招牌小笼包的图片"
							src="statics/images/7c879549890f915a236c048cc8a37jpeg_001.jpeg">
						<div ng-show="imagesPath.length > 1" class="ng-hide">
							<a href="javascript:" ng-click="showImageNext(-4)"
								class="imagegroup-ctrl icon-profile-left-arrow"></a>
							<ul class="imagelist">
								<!-- ngRepeat: imagePath in imagesPath track by $index -->
								<li ng-repeat="imagePath in imagesPath track by $index"
									ng-show="$index >= showImageOffset" class="ng-scope"><a
									href="javascript:" ng-click="focusImage($index)"
									ng-class="{ focus: currentImage === $index }" class="focus"><img
										ng-src="statics/images/7c879549890f915a236c048cc8a37jpeg.jpeg?imageMogr2/thumbnail/60x60"
										alt="招牌小笼包的顾客上传图片"
										src="statics/images/7c879549890f915a236c048cc8a37jpeg_002.jpeg"></a></li>
								<!-- end ngRepeat: imagePath in imagesPath track by $index -->
							</ul>
							<a href="javascript:" ng-click="showImageNext(4)"
								class="imagegroup-ctrl icon-profile-right-arrow"></a>
						</div>
					</div>
					<section class="iteminfo-info">
					<h5 ng-bind="itemInfo.name" class="ng-binding">招牌小笼包</h5>
					<p ng-show="!!itemInfo.description" class="description ng-binding"
						ng-bind="itemInfo.description">纯手工制作，食材新鲜，味道鲜美，是你不错的选择</p>
					<div class="iteminfo-cartitem">
						<div class="iteminfo-price">
							<span class="price"><span class="yen">¥</span> <span
								class="price ng-binding"
								ng-bind="(itemInfo.original_price || itemInfo.price) + (itemInfo.specfoods_id.length > 1 ? '起' : '')">7</span></span>
						</div>
						<!-- ngIf: itemInfo.name -->
						<div ng-if="itemInfo.name" shop-cartbutton="" food="itemInfo"
							button-text="立即购买" ng-hide="shop.id == '656683'"
							class="ng-scope ng-isolate-scope">
							<!-- ngIf: !menuFood.hasSpec -->
							<div ng-if="!menuFood.hasSpec" class="ng-scope">
								<!-- ngIf: !cartItem.quantity && menuFood.stock -->
								<a href="Settlement.jsp"><button class="shop-cartbutton ng-binding ng-scope"
									ng-if="!cartItem.quantity &amp;&amp; menuFood.stock"
									ng-click="cartItem.add($event)">立即购买</button></a>
								<!-- end ngIf: !cartItem.quantity && menuFood.stock -->
								<!-- ngIf: !menuFood.stock -->
								<!-- ngIf: cartItem.quantity > 0 || cartItem.quantity === '' -->
							</div>
							<!-- end ngIf: !menuFood.hasSpec -->
							<!-- ngIf: menuFood.hasSpec -->
						</div>
						<!-- end ngIf: itemInfo.name -->
					</div>
					<div class="iteminfo-rate">
						<!-- ngIf: ratingCount -->
						<h6 ng-if="ratingCount" class="ng-scope">
							商品评价（<span ng-bind="ratingCount" class="ng-binding">105</span>）
						</h6>
						<!-- end ngIf: ratingCount -->
						<ul class="rategroup">
							<!-- ngRepeat: item in ratePageContext.pageData -->
							<li ng-repeat="item in ratePageContext.pageData" class="ng-scope"><div>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.0分" rate-star="" rating="item.rating_star">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 80%;"></span>
									</div>
									<span ng-bind="item.rated_at | date: 'yyyy-MM-dd'"
										class="ng-binding">2017-11-09 00:34</span>
									<div class="rateuser">
										<span ng-bind="item.asterisk_username" class="ng-binding"></span><img
											ng-src="statics/images/untitled"
											src="statics/images/untitled">
									</div>
								</div>
								<p class="ratetext ng-binding" ng-bind="item.rating_text"></p></li>
							<!-- end ngRepeat: item in ratePageContext.pageData -->
							<li ng-repeat="item in ratePageContext.pageData" class="ng-scope"><div>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.0分" rate-star="" rating="item.rating_star">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 80%;"></span>
									</div>
									<span ng-bind="item.rated_at | date: 'yyyy-MM-dd'"
										class="ng-binding">2017-11-09 00:34</span>
									<div class="rateuser">
										<span ng-bind="item.asterisk_username" class="ng-binding"></span><img
											ng-src="statics/images/untitled"
											src="statics/images/untitled">
									</div>
								</div>
								<p class="ratetext ng-binding" ng-bind="item.rating_text"></p></li>
							<!-- end ngRepeat: item in ratePageContext.pageData -->
							<li ng-repeat="item in ratePageContext.pageData" class="ng-scope"><div>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.0分" rate-star="" rating="item.rating_star">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 80%;"></span>
									</div>
									<span ng-bind="item.rated_at | date: 'yyyy-MM-dd'"
										class="ng-binding">2017-11-08 22:52</span>
									<div class="rateuser">
										<span ng-bind="item.asterisk_username" class="ng-binding"></span><img
											ng-src="statics/images/untitled"
											src="statics/images/untitled">
									</div>
								</div>
								<p class="ratetext ng-binding" ng-bind="item.rating_text"></p></li>
							<!-- end ngRepeat: item in ratePageContext.pageData -->
						</ul>
						<div pagination="" pagination-context="ratePageContext"
							pagination-pagesize="3" class=" pagination">
							<ul>
								<li class="prev-btn"></li>
								<li class="current">1</li>
								<li>2</li>
								<li>3</li>
								<li>4</li>
								<li class="more">...</li>
								<li>35</li>
								<li class="next-btn"></li>
							</ul>
						</div>
					</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
