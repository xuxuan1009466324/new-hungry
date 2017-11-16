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

<link rel="apple-touch-icon-precomposed"
	href="https://static2.ele.me/apple-touch-icon.png?v=2">
<link rel="shortcut icon" href="statics/images/favicon-16x16.png" type="image/png">
<link rel="icon" href="statics/images/favicon-16x16.png" type="image/png" sizes="16x16">
<link rel="icon" href="statics/images/favicon-32x32.png" type="image/png" sizes="32x32">
<link rel="icon" href="statics/images/favicon.png" type="image/png" sizes="96x96">


<link media="all" href="statics/css/comment.css" type="text/css" rel="stylesheet">
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
							class="shopnav-tab active"
							href="comment.jsp"
							ng-class="{active: shop.tab === 'rate'}">评价</a> <a
							class="shopnav-tab" href="businessQualification.jsp"
							ng-class="{active: shop.tab === 'info'}">商家资质</a>
						<!-- ngIf: shopAction === 'menu' -->
					</div>
					<!-- 搜索框 start -->
					<div class="shopnav-search">
						<form class="place-search ng-pristine ng-valid" role="search"
							ng-submit="search()"
							action="https://www.ele.me/shop/157017017/rate">
							<button class="place-search-btn icon-search" ubt-click="403"
								ng-attr-ubt-data-keyword="{{searchText}}" title="搜索商家或美食"
								ubt-data-keyword=""></button>
							<label for="globalsearch">搜索商家或美食</label><input id="globalsearch"
								class="place-search-input ng-pristine ng-valid"
								ng-model="searchText" autocomplete="" placeholder="搜索商家,美食..."
								value="">
						</form>
					</div>
					<!-- 搜索框 end -->
				</div>
			</div>
		</div>
		
		<div class="shopmain clearfix container ng-scope">
			<!-- 评论start -->
			<div ng-if="shopAction === 'rate'" shop-rate=""
					class="shoprate ng-scope" perf-click="desktop/202">
					<div class="commentbox">
						<div class="commentfilter">
							<a class="commentfilter-item ng-binding ng-scope active"
								ng-repeat="item in ratingTypeList"
								ng-class="{active: filter.type === item.record_type}"
								ng-click="select(item.record_type)">全部(965)</a>
							<!-- end ngRepeat: item in ratingTypeList -->
							<a class="commentfilter-item ng-binding ng-scope"
								ng-repeat="item in ratingTypeList"
								ng-class="{active: filter.type === item.record_type}"
								ng-click="select(item.record_type)">满意(934)</a>
							<!-- end ngRepeat: item in ratingTypeList -->
							<a class="commentfilter-item ng-binding ng-scope"
								ng-repeat="item in ratingTypeList"
								ng-class="{active: filter.type === item.record_type}"
								ng-click="select(item.record_type)">不满意(31)</a>
							<!-- end ngRepeat: item in ratingTypeList -->
							<a class="commentfilter-item ng-binding ng-scope"
								ng-repeat="item in ratingTypeList"
								ng-class="{active: filter.type === item.record_type}"
								ng-click="select(item.record_type)">有图(43)</a>
							<!-- end ngRepeat: item in ratingTypeList -->
						</div>
						
						
						<ul id="ratinglist" class="commentlist">
							<!-- ngRepeat: comment in ratingStorage[filter.type].data -->
							<li class="commentitem" comment-item=""
								ng-repeat="comment in ratingStorage[filter.type].data"><span
								class="commentitem-avatar"><img
									ng-src="//fuss10.elemecdn.com/e/aa/9a7bba8fbf58d8630cef051a926dajpeg.jpeg?imageMogr2/thumbnail/60x60"
									alt="匿**户" src="statics/images/9a7bba8fbf58d8630cef051a926dajpeg.jpeg"></span>
							<div class="commentitem-content">
									<h4 class="commentitem-username ng-binding">匿**户</h4>
									<div class="commentitem-main">
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="rate" isreadonly="true" rate="">
											<p class="rate-star readonly star level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-rate active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-rate active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-rate active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-rate active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-rate" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<span class="commentitem-time ng-binding"
											ng-bind="comment.time_spent_desc">60分钟送达</span>
										<!-- ngIf: comment.rating_text -->
									</div>
									<!-- ngRepeat: food in comment.item_rating_list -->
									<!-- ngIf: comment.item_rating_list -->
									<div
										class="shoprate-itemrating shoprate-itemratinglist ng-isolate-scope"
										item-rating-list="" data="food"
										ng-if="comment.item_rating_list"
										ng-repeat="food in comment.item_rating_list">
										<span class="shoprate-itemratinglist-name ng-binding">凉瓜排骨汤</span>
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="ratingValue" isreadonly="true"
											rate="">
											<p class="rate-star readonly level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-good active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-good" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<a href="javascript:" ng-click="linkToFood(data.food_id)">查看商品</a>
										<!-- ngIf: data.rating_text -->
										<!-- ngIf: data.reply_text -->
									</div>
									<!-- end ngIf: comment.item_rating_list -->
									<!-- end ngRepeat: food in comment.item_rating_list -->
									<!-- ngIf: comment.item_rating_list -->
									<div
										class="shoprate-itemrating shoprate-itemratinglist ng-isolate-scope"
										item-rating-list="" data="food"
										ng-if="comment.item_rating_list"
										ng-repeat="food in comment.item_rating_list">
										<span class="shoprate-itemratinglist-name ng-binding">鸡蛋生煎包</span>
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="ratingValue" isreadonly="true"
											rate="">
											<p class="rate-star readonly level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-good active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-good" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<a href="javascript:" ng-click="linkToFood(data.food_id)">查看商品</a>
										<!-- ngIf: data.rating_text -->
										<!-- ngIf: data.reply_text -->
									</div>
									<!-- end ngIf: comment.item_rating_list -->
									<!-- end ngRepeat: food in comment.item_rating_list -->
									<!-- ngIf: comment.item_rating_list -->
									<div
										class="shoprate-itemrating shoprate-itemratinglist ng-isolate-scope"
										item-rating-list="" data="food"
										ng-if="comment.item_rating_list"
										ng-repeat="food in comment.item_rating_list">
										<span class="shoprate-itemratinglist-name ng-binding">杭州小笼包</span>
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="ratingValue" isreadonly="true"
											rate="">
											<p class="rate-star readonly level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-good active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-good" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<a href="javascript:" ng-click="linkToFood(data.food_id)">查看商品</a>
										<!-- ngIf: data.rating_text -->
										<!-- ngIf: data.reply_text -->
									</div>
									<!-- end ngIf: comment.item_rating_list -->
									<!-- end ngRepeat: food in comment.item_rating_list -->
									<!-- ngIf: comment.item_rating_list -->
									<div
										class="shoprate-itemrating shoprate-itemratinglist ng-isolate-scope"
										item-rating-list="" data="food"
										ng-if="comment.item_rating_list"
										ng-repeat="food in comment.item_rating_list">
										<span class="shoprate-itemratinglist-name ng-binding">招牌小笼包</span>
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="ratingValue" isreadonly="true"
											rate="">
											<p class="rate-star readonly level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-good active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-good" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<a href="javascript:" ng-click="linkToFood(data.food_id)">查看商品</a>
										<!-- ngIf: data.rating_text -->
										<!-- ngIf: data.reply_text -->
									</div>
									<!-- end ngIf: comment.item_rating_list -->
									<!-- end ngRepeat: food in comment.item_rating_list -->
									<span class="commentitem-date ng-binding">2017-11-08
										12:00:00</span>
									<!-- ngIf: comment.reply_text -->
									<!-- ngRepeat: item in foodImgUrl -->
								</div></li>
							<!-- end ngRepeat: comment in ratingStorage[filter.type].data -->
							<li class="commentitem" comment-item=""
								ng-repeat="comment in ratingStorage[filter.type].data"><span
								class="commentitem-avatar"><img
									ng-src="//fuss10.elemecdn.com//shadow.elemecdn.com/faas/desktop/media/img/default-avatar.38e40d.png?imageMogr2/thumbnail/60x60"
									alt="匿**户" src="statics/images/89274e7b03eb2cac0d7529f38ab87jpeg.jpeg"></span>
							<div class="commentitem-content">
									<h4 class="commentitem-username ng-binding">匿**户</h4>
									<div class="commentitem-main">
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="rate" isreadonly="true" rate="">
											<p class="rate-star readonly star level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-rate active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-rate active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-rate active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-rate active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-rate" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<span class="commentitem-time ng-binding"
											ng-bind="comment.time_spent_desc">40分钟送达</span>
										<!-- ngIf: comment.rating_text -->
									</div>
									<!-- ngRepeat: food in comment.item_rating_list -->
									<!-- ngIf: comment.item_rating_list -->
									<div
										class="shoprate-itemrating shoprate-itemratinglist ng-isolate-scope"
										item-rating-list="" data="food"
										ng-if="comment.item_rating_list"
										ng-repeat="food in comment.item_rating_list">
										<span class="shoprate-itemratinglist-name ng-binding">老干妈炒饭</span>
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="ratingValue" isreadonly="true"
											rate="">
											<p class="rate-star readonly level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-good active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-good" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<a href="javascript:" ng-click="linkToFood(data.food_id)">查看商品</a>
										<!-- ngIf: data.rating_text -->
										<!-- ngIf: data.reply_text -->
									</div>
									<!-- end ngIf: comment.item_rating_list -->
									<!-- end ngRepeat: food in comment.item_rating_list -->
									<!-- ngIf: comment.item_rating_list -->
									<div
										class="shoprate-itemrating shoprate-itemratinglist ng-isolate-scope"
										item-rating-list="" data="food"
										ng-if="comment.item_rating_list"
										ng-repeat="food in comment.item_rating_list">
										<span class="shoprate-itemratinglist-name ng-binding">青菜瘦肉粥</span>
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="ratingValue" isreadonly="true"
											rate="">
											<p class="rate-star readonly level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-good active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-good" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<a href="javascript:" ng-click="linkToFood(data.food_id)">查看商品</a>
										<!-- ngIf: data.rating_text -->
										<!-- ngIf: data.reply_text -->
									</div>
									<!-- end ngIf: comment.item_rating_list -->
									<!-- end ngRepeat: food in comment.item_rating_list -->
									<!-- ngIf: comment.item_rating_list -->
									<div
										class="shoprate-itemrating shoprate-itemratinglist ng-isolate-scope"
										item-rating-list="" data="food"
										ng-if="comment.item_rating_list"
										ng-repeat="food in comment.item_rating_list">
										<span class="shoprate-itemratinglist-name ng-binding">冰红茶250ml</span>
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="ratingValue" isreadonly="true"
											rate="">
											<p class="rate-star readonly level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-good active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-good" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<a href="javascript:" ng-click="linkToFood(data.food_id)">查看商品</a>
										<!-- ngIf: data.rating_text -->
										<!-- ngIf: data.reply_text -->
									</div>
									<!-- end ngIf: comment.item_rating_list -->
									<!-- end ngRepeat: food in comment.item_rating_list -->
									<!-- ngIf: comment.item_rating_list -->
									<div
										class="shoprate-itemrating shoprate-itemratinglist ng-isolate-scope"
										item-rating-list="" data="food"
										ng-if="comment.item_rating_list"
										ng-repeat="food in comment.item_rating_list">
										<span class="shoprate-itemratinglist-name ng-binding">鸡蛋生煎饺子</span>
										<div class="commentitem-stars rate ng-isolate-scope"
											config="rateConfig" value="ratingValue" isreadonly="true"
											rate="">
											<p class="rate-star readonly level4"
												ng-class="{readonly: isreadonly, star: starStyle}">
												<!-- ngIf: label -->
												<span ng-click="doRate($event)" ng-mouseover="doRate($event)"
													ng-mouseleave="doRate($event)" data-level="4"><a
													class="icon-star-good active" href="javascript:"
													data-level="1" ng-class="{active : rateLevel >= 1}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="2" ng-class="{active : rateLevel >= 2}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="3" ng-class="{active : rateLevel >= 3}"></a> <a
													class="icon-star-good active" href="javascript:"
													data-level="4" ng-class="{active : rateLevel >= 4}"></a> <a
													class="icon-star-good" href="javascript:" data-level="5"
													ng-class="{active : rateLevel >= 5}"></a></span>
												<!-- ngIf: config.tipText -->
												<span ng-if="config.tipText"
													class="active rate-star-text ng-binding ng-scope"
													ng-bind="config.tipText[rateLevel]">满意</span>
												<!-- end ngIf: config.tipText -->
											</p>
											<!-- ngIf: config.mutiContent -->
											<!-- ngIf: !config.mutiContent -->
											<div ng-if="!config.mutiContent"
												class="rate-content simple ng-scope ng-hide"
												ng-show="!config.mutiContent &amp;&amp; value.value > 0"
												ng-hide="copyVal.value || value.value === 0">
												<textarea
													ng-attr-placeholder="{{config.placeholder[rateLevel - 1]}}"
													ng-model="value.text" class="ng-pristine ng-valid"
													placeholder=""></textarea>
											</div>
											<!-- end ngIf: !config.mutiContent -->
											<!-- ngIf: copyVal.text -->
										</div>
										<a href="javascript:" ng-click="linkToFood(data.food_id)">查看商品</a>
										<!-- ngIf: data.rating_text -->
										<!-- ngIf: data.reply_text -->
									</div>
									<!-- end ngIf: comment.item_rating_list -->
									<!-- end ngRepeat: food in comment.item_rating_list -->
									<span class="commentitem-date ng-binding">2017-11-08
										12:00:00</span>
									<!-- ngIf: comment.reply_text -->
									<!-- ngRepeat: item in foodImgUrl -->
								</div></li>
						</ul>
					</div>
			</div>
			<!-- 评论end -->
			
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
								action="https://www.ele.me/shop/157017017/rate">
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
		
		<!-- 右侧栏 start-->
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
		<!-- 右侧栏 end-->
	
	</div>
	
	<!-- 底部 start-->
	<%@include file="../common/footer.jsp"%>
	<!-- 底部 end-->
</body>
</html>
