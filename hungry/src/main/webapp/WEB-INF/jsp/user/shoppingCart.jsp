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

<title ng-bind="SEO.title" class="ng-binding">订一客日式料理(天源店)外卖_订一客日式料理(天源店)菜单|电话_订一客日式料理(天源店)网上订餐
	- 天河区天源路150-156号自编1号107号铺</title>

<link rel="shortcut icon" href="statics/images/favicon-16x16.png" type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png" sizes="96x96">


<!--[if lte IE 8]><script>window.location.href='https://h.ele.me/activities/landing';</script><![endif]-->

<script src="statics/js/api" data-ref="API_CONFIG"></script>
<script src="statics/js/perf.js" type="text/javascript" crossorigin="anonymous"></script>
<script src="statics/js/vendor.4d50a6.js" type="text/javascript"
	crossorigin="anonymous"></script>
<!-- <script src="statics/js/main.956670.js" type="text/javascript"
	crossorigin="anonymous"></script> -->

<link media="all" href="statics/css/shoppingCart.css" type="text/css" rel="stylesheet">
</head>
<body cute-title=""
	ng-class="{hidesidebar: layoutState &amp;&amp; layoutState.hideSidebar, smallbody: layoutState.smallBody, whitebody: layoutState.whiteBody}"
	style="position: relative;" class="hidesidebar shopmenu-nav-sticky"
	lim:visitorcapacity="1">

	
					<div shop-cart="" cart-link="cartLink"
						ng-hide="shopCache.id == 656683" class="ng-isolate-scope">
						<div class="shop-cart">
							<div class="shop-cartbasket" id="shopbasket"
								style="top: -573px; height: auto;">
								<div shop-groupswitcher="" cart="shopCart"
									class="ng-isolate-scope">
									<!-- ngIf: shopCart.vm.groups.length > 1 -->
									<div class="shop-grouphead single"
										ng-class="{ single: shopCart.vm.groups.length === 1 }">
										<!-- ngIf: shopCart.vm.groups.length === 1 -->
										<a href="javascript:" class="icon-cart-add ng-scope"
											ng-if="shopCart.vm.groups.length === 1" ng-click="addGroup()"
											tooltip="添加购物车"></a>
										<!-- end ngIf: shopCart.vm.groups.length === 1 -->
										<!-- ngIf: showGuide && shopCart.vm.groups.length === 1 -->
										<div class="shop-grouphead-row">
											<!-- ngIf: shopCart.vm.groups.length > 1 -->
											购物车 <a href="javascript:"
												ng-click="shopCart.clearGroup(shopCart.currentGroupIndex)">[清空]</a>
										</div>
									</div>
								</div>
								<!-- ngIf: !shopCart.vm.groups[shopCart.currentGroupIndex].length -->
								<!-- ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="628347197">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="三文鱼五味套餐0">三文鱼五味套餐0</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥65</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="628349238">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="厚切火炙芝士鳗鱼套餐">厚切火炙芝士鳗鱼套餐</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥58</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="628344897">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="海族优质单人套餐0">海族优质单人套餐0</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥78</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="628344891">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="广州塔套餐（送招牌奶茶）1">广州塔套餐（送招牌奶茶）1</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥42</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="628348223">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="宝贝心选套餐">宝贝心选套餐</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥48</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="652142153">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="加州卷+巴沙鱼扒套餐1">加州卷+巴沙鱼扒套餐1</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥35</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="644447213">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="缤纷什锦套餐">缤纷什锦套餐</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥27</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="628346506">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="春游套餐（加波子汽水）">春游套餐（加波子汽水）</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥56</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="628344881">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="双鱼加州卷套餐（三文鱼&amp;鳗鱼）">双鱼加州卷套餐（三文鱼&amp;鳗鱼）</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥36</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="628347207">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="鳗鱼家族套餐">鳗鱼家族套餐</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥52</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="718589675">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="火焰蟹脚棒盖饭">火焰蟹脚棒盖饭</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥28</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<div
									ng-repeat="item in shopCart.vm.groups[shopCart.currentGroupIndex]"
									class="shop-cartbasket-tablerow ng-scope" entityid="139517588">
									<div class="cell itemname ng-binding" ng-bind="item.name"
										title="虾虾笑套餐">虾虾笑套餐</div>
									<div class="cell itemquantity">
										<button ng-click="shopCart.subEntity(item, $event)">-</button>
										<input ng-model="item.quantity"
											ng-blur="shopCart.updateFromInput(item, item.quantity)"
											class="ng-pristine ng-valid" value="1">
										<button ng-click="shopCart.addEntity(item, $event)">+</button>
									</div>
									<div class="cell itemtotal ng-binding"
										ng-bind="'¥' + ((item.price * item.quantity).toFixed(2) | number)">¥42</div>
								</div>
								<!-- end ngRepeat: item in shopCart.vm.groups[shopCart.currentGroupIndex] -->
								<!-- ngIf: shopCart.packingFee -->
							</div>
							<div class="shop-cartfooter" ng-click="shopCart.toggleCart()">
								<span class="icon-cart shop-carticon">
									<!-- ngIf: shopCart.vm.quantity > 0 -->
									<span class="shop-cartpieces ng-binding ng-scope"
									ng-bind="shopCart.vm.quantity" ng-if="shopCart.vm.quantity > 0">12</span>
								<!-- end ngIf: shopCart.vm.quantity > 0 -->
								</span>
								<!-- ngIf: shopCart.vm.quantity > 0 -->
								<p class="shop-cartfooter-text price ng-binding ng-scope"
									ng-if="shopCart.vm.quantity > 0"
									ng-bind="shopCart.vm.total | number">567</p>
								<!-- end ngIf: shopCart.vm.quantity > 0 -->
								<!-- ngIf: shopCart.vm.extras.length && !shopCart.vm.button.disabled -->
								<div class="shop-cartfooter-text extras ng-binding"
									ng-bind-html="shopCart.vm.picewiseText">配送费¥4</div>
								<a href="Settlement.jsp"><button class="shop-cartfooter-checkout ng-binding"
									ng-class="{disabled: shopCart.vm.button.name !== 'CAN_ORDER'}"
									ng-disabled="shopCart.vm.button.disabled"
									ng-bind="shopCart.vm.button.text" ng-click="checkout($event)">去结算
									&gt;</button></a>
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
				


	<script src="statics/js/home"></script>



	<script src="statics/js/textstatic.js"></script>
</body>
</html>
