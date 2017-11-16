<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html ng-app="eleme" perf-error="desktop/" class="ng-scope">
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<base href="${ctx}/">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">

<title ng-bind="SEO.title" class="ng-binding">杭州小笼包外卖_杭州小笼包菜单|电话_杭州小笼包网上订餐
	- 广州市白云区京溪街京溪中路30号04档</title>


<link rel="js/shortcut icon" href="statics/images/favicon-16x16.png"
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
<script src="statics/js/main.956670.js" type="text/javascript"
	crossorigin="anonymous"></script>

<link media="all" href="statics/css/storeDetails.css" type="text/css" rel="stylesheet">
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
	<div class="sidebar ng-hide" role="complementary"
		ng-hide="layoutState &amp;&amp; layoutState.hideSidebar">
		<div class="sidebar-tabs">
			<div class="toolbar-tabs-middle">
				<a class="toolbar-btn icon-order toolbar-close"
					href="https://www.ele.me/profile/order" hardjump="" tooltip="我的订单"
					tooltip-placement="left" ubt-click="toolbar_order">
					<!-- ngIf: sidebarCount.uncompletedOrder > 0 -->
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
		</div>
	</div>
	<!-- ngView:  -->
	<div ng-view="" role="main" class="ng-scope">
		<div class="shopguide ng-isolate-scope" shop-guide="" data="shop"
			isdisabled="shop.disabled">
			<%@include file="../common/top_header.jsp" %> <!-- 引用店家详情页面  -->
		</div>
		<div shop-nav="" data="shop" filter-data="shop.filter"
			display-type="shop.displayType" shop-action="shopAction"
			class="ng-scope ng-isolate-scope">
			<div class="shopnav">
				<div class="container clearfix">
					<div class="shopnav-left">
						<a class="shopnav-tab active"
							href="storeDetails.jsp"
							ng-class="{active: shop.tab === 'index'}">所有商品</a> <a
							class="shopnav-tab" href="comment.jsp"
							ng-class="{active: shop.tab === 'rate'}">评价</a> <a
							class="shopnav-tab" href="businessQualification.jsp"
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
					<img ng-if="type==='profile'" src="statics/images/profile-loading.4984fa.gif"
						alt="正在加载" class="ng-scope">
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
						class="ng-binding ng-scope active">热销</a>
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
					ng-class="{grid: displayType === 'grid', list: displayType === 'list'}"
					style="margin-top: 0px;">
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
									href="productDetails.jsp" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/a/91/7c879549890f915a236c048cc8a37jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="招牌小笼包的图片" src="statics/images/7c879549890f915a236c048cc8a37jpeg.jpeg"></a></span>
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
											<a href="shoppingCart.jsp"><button class="shop-cartbutton ng-binding ng-scope"
												ng-if="!cartItem.quantity &amp;&amp; menuFood.stock"
												ng-click="cartItem.add($event)">加入购物车</button></a>
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
										ng-src="//fuss10.elemecdn.com/2/4a/b2a75785a41635061297c34a355aajpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="杭州小笼包的图片" src="statics/images/b2a75785a41635061297c34a355aajpeg.jpeg"></a></span>
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
							
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								优惠 <span class="shopmenu-des ng-binding">美味又实惠, 大家快来抢!</span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="698138072"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/a/91/7c879549890f915a236c048cc8a37jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="招牌小笼包的图片" src="statics/images/7c879549890f915a236c048cc8a37jpeg.jpeg"></a></span>
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
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697670016"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/0/82/0e641998ac5444855ea499f7d9018jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="腊肠双丁炒饭的图片" src="statics/images/0e641998ac5444855ea499f7d9018jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">腊肠双丁炒饭</h3>
									<p class="color-mute ui-ellipsis ng-binding"
										tooltip="港式腊肠+火腿+玉米+青豆+胡萝卜">港式腊肠+火腿+玉米+青豆+胡萝卜</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分3.8分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 76%;"></span>
									</div>
									<span class="color-mute ng-binding">(5)</span> <span
										class="color-mute ng-binding">月售53份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">18.88<small
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
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								扫码免费领红包 <span class="shopmenu-des ng-binding"></span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697408464"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/b/f0/60738dfe2c5bb5952d08ec081bc77jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="扫码免费抢红包啦~的图片"
										src="statics/images/60738dfe2c5bb5952d08ec081bc77jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">扫码免费抢红包啦~</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip=""></p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分0.0分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 0%;"></span>
									</div>
									<span class="color-mute ng-binding">(0)</span> <span
										class="color-mute ng-binding">月售0份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">0<small
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
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								杭州小笼包 <span class="shopmenu-des ng-binding">每天只限20份，欢迎速来抢购</span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="698798467"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/2/4a/b2a75785a41635061297c34a355aajpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="杭州小笼包的图片" src="statics/images/b2a75785a41635061297c34a355aajpeg.jpeg"></a></span>
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
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								特色小吃 <span class="shopmenu-des ng-binding"></span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="698138072"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/a/91/7c879549890f915a236c048cc8a37jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="招牌小笼包的图片" src="statics/images/7c879549890f915a236c048cc8a37jpeg.jpeg"></a></span>
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
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697568188"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/1/cc/69931615435e45c05664ced4a6756jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="鸡蛋生煎包的图片" src="statics/images/69931615435e45c05664ced4a6756jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">鸡蛋生煎包</h3>
									<p class="color-mute ui-ellipsis ng-binding"
										tooltip="是由小笼包制作而成，煎至以后又香又脆，外面包裹着鸡蛋，有点稍油腻">是由小笼包制作而成，煎至以后又香又脆，外面包裹着鸡蛋，有点稍油腻</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.1分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 82.8%;"></span>
									</div>
									<span class="color-mute ng-binding">(63)</span> <span
										class="color-mute ng-binding">月售371份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">12<small
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
							<!-- end ngRepeat: food in category.foods -->
							
							
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								花式炒饭 <span class="shopmenu-des ng-binding">多工序制作米饭，让米饭充分发挥它的香味，配合多种肉类、蔬菜类的完美结合，口感极佳！</span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id=""
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/e/dc/54b7742c28ac7ce6c160adb6d5b58jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="川香鸡胗的图片" src="statics/images/54b7742c28ac7ce6c160adb6d5b58jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">川香鸡胗</h3>
									<p class="color-mute ui-ellipsis ng-binding"
										tooltip="鸡胗+青红辣椒+蒜苗+秘制调料
">鸡胗+青红辣椒+蒜苗+秘制调料</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.0分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 80%;"></span>
									</div>
									<span class="color-mute ng-binding">(9)</span> <span
										class="color-mute ng-binding">月售36份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">18.88<small
									class="ng-binding">起</small> <!-- ngIf: food.min_purchase && food.min_purchase > 1 --></span>
								<span class="col-4"><div shop-cartbutton="" food="food"
										ng-hide="shop.id == '656683'" class="ng-isolate-scope">
										<!-- ngIf: !menuFood.hasSpec -->
										<!-- ngIf: menuFood.hasSpec -->
										<div ng-if="menuFood.hasSpec" class="ng-scope">
											<!-- ngIf: !cartSpec.quantity -->
											<button class="shop-cartbutton ng-scope ng-isolate-scope"
												ng-if="!cartSpec.quantity" shop-specmenu="" food="cartSpec">选规格</button>
											<!-- end ngIf: !cartSpec.quantity -->
											<!-- ngIf: cartSpec.quantity -->
										</div>
										<!-- end ngIf: menuFood.hasSpec -->
									</div></span>
							</div>
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id=""
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/a/d4/2c0c7224135a410f4500eba496e86jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="老干妈炒饭的图片" src="statics/images/2c0c7224135a410f4500eba496e86jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">老干妈炒饭</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip=""></p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分3.9分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 78.2%;"></span>
									</div>
									<span class="color-mute ng-binding">(11)</span> <span
										class="color-mute ng-binding">月售64份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">18.88<small
									class="ng-binding">起</small> <!-- ngIf: food.min_purchase && food.min_purchase > 1 --></span>
								<span class="col-4"><div shop-cartbutton="" food="food"
										ng-hide="shop.id == '656683'" class="ng-isolate-scope">
										<!-- ngIf: !menuFood.hasSpec -->
										<!-- ngIf: menuFood.hasSpec -->
										<div ng-if="menuFood.hasSpec" class="ng-scope">
											<!-- ngIf: !cartSpec.quantity -->
											<button class="shop-cartbutton ng-scope ng-isolate-scope"
												ng-if="!cartSpec.quantity" shop-specmenu="" food="cartSpec">选规格</button>
											<!-- end ngIf: !cartSpec.quantity -->
											<!-- ngIf: cartSpec.quantity -->
										</div>
										<!-- end ngIf: menuFood.hasSpec -->
									</div></span>
							</div>
							<!-- end ngRepeat: food in category.foods -->
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								心满意粥 <span class="shopmenu-des ng-binding"></span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697689460"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/a/87/c6c269c07be666c780c4c5f59d3c8jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="白粥的图片" src="statics/images/c6c269c07be666c780c4c5f59d3c8jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">白粥</h3>
									<p class="color-mute ui-ellipsis ng-binding"
										tooltip="明火白粥每个时段都是抢手货，长时间熬制，用心制作（不配备小菜，有需要可备注）">明火白粥每个时段都是抢手货，长时间熬制，用心制作（不配备小菜，有需要可备注）</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.2分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 83.8%;"></span>
									</div>
									<span class="color-mute ng-binding">(54)</span> <span
										class="color-mute ng-binding">月售363份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">2.88<small
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
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697671424"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/6/9f/ca99386780d7453a877fd2d096370jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="瘦肉粥的图片" src="statics/images/ca99386780d7453a877fd2d096370jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">瘦肉粥</h3>
									<p class="color-mute ui-ellipsis ng-binding"
										tooltip="瘦肉粥葱花一撒，喜欢清淡又不缺营养不错选择">瘦肉粥葱花一撒，喜欢清淡又不缺营养不错选择</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.1分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 82.8%;"></span>
									</div>
									<span class="color-mute ng-binding">(14)</span> <span
										class="color-mute ng-binding">月售111份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">8.88<small
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
							<!-- end ngRepeat: food in category.foods -->
							
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								瓦罐养生汤 <span class="shopmenu-des ng-binding"></span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697680993"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/9/08/34ba6c5ea81204963d4752801c6f5jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="沙参排骨汤的图片" src="statics/images/34ba6c5ea81204963d4752801c6f5jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">沙参排骨汤</h3>
									<p class="color-mute ui-ellipsis ng-binding"
										tooltip="沙参是一味常见的补阴药，可养阴滋肺，祛痰止咳，养胃，利咽喉">沙参是一味常见的补阴药，可养阴滋肺，祛痰止咳，养胃，利咽喉</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.3分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 85%;"></span>
									</div>
									<span class="color-mute ng-binding">(4)</span> <span
										class="color-mute ng-binding">月售35份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">10.88<small
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
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697676117"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/1/32/dbba7aa2aaf66e446639cd61fa5a4jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="凉瓜排骨汤的图片" src="statics/images/dbba7aa2aaf66e446639cd61fa5a4jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">凉瓜排骨汤</h3>
									<p class="color-mute ui-ellipsis ng-binding"
										tooltip="清凉降火之功效，食材新鲜配置，味道鲜美">清凉降火之功效，食材新鲜配置，味道鲜美</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.3分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 85%;"></span>
									</div>
									<span class="color-mute ng-binding">(4)</span> <span
										class="color-mute ng-binding">月售59份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">10.88<small
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
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								炒粉（面）类 <span class="shopmenu-des ng-binding"></span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id=""
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/4/53/7e82e098a36a35e0e7ec7e6283f3cjpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="炒米粉的图片" src="statics/images/7e82e098a36a35e0e7ec7e6283f3cjpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">炒米粉</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip="鸡蛋+蔬菜">鸡蛋+蔬菜</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.1分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 82.2%;"></span>
									</div>
									<span class="color-mute ng-binding">(18)</span> <span
										class="color-mute ng-binding">月售138份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">10.88<small
									class="ng-binding">起</small> <!-- ngIf: food.min_purchase && food.min_purchase > 1 --></span>
								<span class="col-4"><div shop-cartbutton="" food="food"
										ng-hide="shop.id == '656683'" class="ng-isolate-scope">
										<!-- ngIf: !menuFood.hasSpec -->
										<!-- ngIf: menuFood.hasSpec -->
										<div ng-if="menuFood.hasSpec" class="ng-scope">
											<!-- ngIf: !cartSpec.quantity -->
											<button class="shop-cartbutton ng-scope ng-isolate-scope"
												ng-if="!cartSpec.quantity" shop-specmenu="" food="cartSpec">选规格</button>
											<!-- end ngIf: !cartSpec.quantity -->
											<!-- ngIf: cartSpec.quantity -->
										</div>
										<!-- end ngIf: menuFood.hasSpec -->
									</div></span>
							</div>
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id=""
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/6/a0/7ed07daed60c4f4b549c05eac464bjpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="炒河粉的图片" src="statics/images/7ed07daed60c4f4b549c05eac464bjpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">炒河粉</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip="鸡蛋+蔬菜">鸡蛋+蔬菜</p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.2分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 83.4%;"></span>
									</div>
									<span class="color-mute ng-binding">(24)</span> <span
										class="color-mute ng-binding">月售121份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">10.88<small
									class="ng-binding">起</small> <!-- ngIf: food.min_purchase && food.min_purchase > 1 --></span>
								<span class="col-4"><div shop-cartbutton="" food="food"
										ng-hide="shop.id == '656683'" class="ng-isolate-scope">
										<!-- ngIf: !menuFood.hasSpec -->
										<!-- ngIf: menuFood.hasSpec -->
										<div ng-if="menuFood.hasSpec" class="ng-scope">
											<!-- ngIf: !cartSpec.quantity -->
											<button class="shop-cartbutton ng-scope ng-isolate-scope"
												ng-if="!cartSpec.quantity" shop-specmenu="" food="cartSpec">选规格</button>
											<!-- end ngIf: !cartSpec.quantity -->
											<!-- ngIf: cartSpec.quantity -->
										</div>
										<!-- end ngIf: menuFood.hasSpec -->
									</div></span>
							</div>
							<!-- end ngRepeat: food in category.foods -->
							
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								上帝要求加在炒饭里 <span class="shopmenu-des ng-binding"></span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697705137"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/b/fb/83e9e32ac1b03541ca3bc2e706f13jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="火腿的图片" src="statics/images/83e9e32ac1b03541ca3bc2e706f13jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">火腿</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip=""></p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.2分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 84%;"></span>
									</div>
									<span class="color-mute ng-binding">(5)</span> <span
										class="color-mute ng-binding">月售19份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">5<small
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
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697696872"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/e/27/7730f0ad748f6ea7d45694bc8f99ajpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="老干妈的图片" src="statics/images/7730f0ad748f6ea7d45694bc8f99ajpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">老干妈</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip=""></p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.0分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 80%;"></span>
									</div>
									<span class="color-mute ng-binding">(3)</span> <span
										class="color-mute ng-binding">月售15份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">4<small
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
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								实惠套餐 <span class="shopmenu-des ng-binding"></span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697729062"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/7/14/d7eb5bb3727655c143c7f6dec7c50jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="腊肠双丁炒饭+小笼包+饮料+小菜的图片"
										src="statics/images/d7eb5bb3727655c143c7f6dec7c50jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">腊肠双丁炒饭+小笼包+饮料+小菜</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip=""></p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.0分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 80%;"></span>
									</div>
									<span class="color-mute ng-binding">(4)</span> <span
										class="color-mute ng-binding">月售22份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">26.88<small
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
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697725186"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/8/cc/2e8fccfc39a1334dd656ac73ed821jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="川香鸡胗炒饭+小笼包+饮料+小菜的图片"
										src="statics/images/2e8fccfc39a1334dd656ac73ed821jpeg_001.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">川香鸡胗炒饭+小笼包+饮料+小菜</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip=""></p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分5.0分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 100%;"></span>
									</div>
									<span class="color-mute ng-binding">(2)</span> <span
										class="color-mute ng-binding">月售9份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">26.88<small
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
							<!-- end ngRepeat: food in category.foods -->
							
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
						<div class="shopmenu-list clearfix ng-scope"
							ng-repeat="category in categorys">
							<h3 class="shopmenu-title ng-binding">
								酒水饮料（单点此类产品不配送） <span class="shopmenu-des ng-binding">酒水不参加满减活动</span>
							</h3>
							<!-- ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697795351"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/7/2e/946e0d195ef458d64bf15ef50ac3bjpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="雪碧250ml的图片" src="statics/images/946e0d195ef458d64bf15ef50ac3bjpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">雪碧250ml</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip=""></p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分4.0分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }" style="width: 80%;"></span>
									</div>
									<span class="color-mute ng-binding">(5)</span> <span
										class="color-mute ng-binding">月售43份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">3<small
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
							<!-- end ngRepeat: food in category.foods -->
							<div class="shopmenu-food ng-isolate-scope"
								ng-class="{noimg: !food.image_path}" id="697809195"
								ng-repeat="food in category.foods" shop-menu-item="" food="food"
								shop="shopCache">
								<!-- ngIf: food.image_path -->
								<span class="col-1 ng-scope" ng-if="food.image_path"><a
									href="javascript:" ng-click="showInfo(food)"><img
										ng-src="//fuss10.elemecdn.com/a/73/2d46da6313c0995addfbbaffc8af0jpeg.jpeg?imageMogr2/thumbnail/100x100"
										alt="冰红茶250ml的图片" src="statics/images/2d46da6313c0995addfbbaffc8af0jpeg.jpeg"></a></span>
								<!-- end ngIf: food.image_path -->
								<div class="col-2 shopmenu-food-main">
									<h3 class="shopmenu-food-name ui-ellipsis ng-binding">冰红茶250ml</h3>
									<p class="color-mute ui-ellipsis ng-binding" tooltip=""></p>
									<p>
									<div class="starrating icon-star ng-isolate-scope"
										title="评分3.7分" rate-star="" rating="food.rating">
										<span class="icon-star"
											ng-style="{ width: (rating * 20) + '%' }"
											style="width: 73.4%;"></span>
									</div>
									<span class="color-mute ng-binding">(6)</span> <span
										class="color-mute ng-binding">月售49份</span>
									</p>
								</div>
								<span class="col-3 shopmenu-food-price color-stress ng-binding">3<small
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
							<!-- end ngRepeat: food in category.foods -->
							<!-- end ngRepeat: food in category.foods -->
						</div>
						<!-- end ngRepeat: category in categorys -->
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
							<form ng-submit="complaint()"
								class="ng-scope ng-pristine ng-valid"
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
			<a href="javascript:" class="sidetools-item icon-service"
				title="在线客服" tooltip="在线客服" tooltip-placement="left"
				online-service="" target="_top" style="visibility: visible;"></a> <a
				href="javascript:" class="sidetools-item icon-arrow-up" title="回到顶部"
				tooltip="回到顶部" tooltip-placement="left" ng-click="backToTop()"></a>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>

	<script src="statics/js/home"></script>
	<script src="statics/js/textstatic.js"></script>
</body>
</html>
