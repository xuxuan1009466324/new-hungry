<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<div class="container" ng-show="shop" itemscope=""
	itemtype="http://schema.org/Restaurant">
	<div class="shopguide-info">
		<meta itemprop="url" content="https://www.ele.me/shop/157017017">
		<img
			ng-src="//fuss10.elemecdn.com/8/cc/2e8fccfc39a1334dd656ac73ed821jpeg.jpeg?imageMogr2/thumbnail/95x95"
			alt='<s:property value="#request.seller.sellerName"/>' itemprop="image"
			src="statics/images/2e8fccfc39a1334dd656ac73ed821jpeg.jpeg">
		<div class="shopguide-info-wrapper">
			<div>
				<h1 title='<s:property value="#request.seller.sellerName"/>' ng-class="{hastip: shop.tip}" itemprop="name"
					class="ng-binding"><s:property value="#request.seller.sellerName"/></h1>
				<!-- ngIf: shop.tip -->
				<a ng-href="/shop/157017017/info"
					href="https://www.ele.me/shop/157017017/info"> <!-- ngIf: isJingHua -->
				</a>
			</div>
			<p class="shopguide-info-rate">
			<div class="starrating icon-star ng-isolate-scope" title="评分4.5分"
				rate-star="" rating="shop.rating">
				<span class="icon-star" ng-style="{ width: (rating * 20) + '%' }"
					style="width: 90%;"></span>
			</div>
			(<a ng-href="/shop/157017017/rate" class="ng-binding"
				href="https://www.ele.me/shop/157017017/rate">884</a>) <span
				class="ng-binding">月售1835单</span>
			</p>
			<p>
				<!-- ngRepeat: flavor in shop.flavor -->
			</p>
		</div>
		<div class="shopguide-info-extra">
			<ul>
				<!-- ngIf: shopRatingScore -->
				<li class="shopguide-extra-item shopguide-extra-compete ng-scope"
					ng-if="shopRatingScore"><div itemscope=""
						itemprop="aggregateRating"
						itemtype="http://schema.org/AggregateRating">
						<h2 class="color-stress ng-binding" itemprop="ratingValue">4.5</h2>
						<meta itemprop="bestRating" content="5">
						<meta itemprop="reviewCount" content="884">
						<p>
							综合评价<br> <span class="color-mute ng-binding">高于周边商家</span>
							<!-- ngIf: shopRatingScore.compare_rating -->
							<span class="color-stress ng-binding ng-scope"
								ng-if="shopRatingScore.compare_rating">63.1%</span>
							<!-- end ngIf: shopRatingScore.compare_rating -->
						</p>
					</div>
					<div>
						<p>服务态度
						<div class="starrating icon-star ng-isolate-scope" title="评分4.5分"
							rate-star="" rating="shopRatingScore.service_score">
							<span class="icon-star" ng-style="{ width: (rating * 20) + '%' }"
								style="width: 89.9842%;"></span>
						</div>
						<span class="color-stress ng-binding">4.5分</span>
						</p>
						<p>菜品评价
						<div class="starrating icon-star ng-isolate-scope" title="评分4.5分"
							rate-star="" rating="shopRatingScore.food_score">
							<span class="icon-star" ng-style="{ width: (rating * 20) + '%' }"
								style="width: 89.2616%;"></span>
						</div>
						<span class="color-stress ng-binding">4.5分</span>
						</p>
					</div></li>
				<!-- end ngIf: shopRatingScore -->
				<!-- ngIf: shop.description -->
				<li class="shopguide-extra-item ng-binding ng-scope"
					ng-if="shop.description" itemprop="description">只为做最好的包子，最有特色的炒饭！让大家百忙之中能吃上一份满意的外卖</li>
				<!-- end ngIf: shop.description -->
				<li class="shopguide-extra-item address"><p itemscope=""
						itemprop="streetAddress"
						itemtype="http://schema.org/PostalAddress">
						<span class="label">商家地址：</span> <span class="ng-binding">广州市白云区京溪街京溪中路30号04档</span>
						<meta itemprop="telephone" content="13380085385 15958140938">
					</p>
					<p>
						<span class="label">营业时间：</span> <span itemprop="openingHours"
							class="ng-binding">07:00-22:30</span>
					</p></li>
				<li class="shopguide-extra-item"><p
						class="shopguide-extra-delivery">
						由<span class="ng-binding">杭州小笼包</span>提供配送服务
					</p></li>
			</ul>
		</div>
	</div>
	<div class="shopguide-server">
		<span ng-hide="shop.id == 656683" class=""><em>起送价</em> <em
			class="shopguide-server-value ng-binding">20元</em></span> <span
			ng-hide="shop.id == 656683" class=""><em>配送费</em> <em
			class="shopguide-server-value ng-binding">配送费¥4</em> <!-- ngIf: shop.delivery_mode.description --></span>
		<span ng-hide="shop.id == 656683" class=""><em>平均送达速度</em> <em
			class="shopguide-server-value ng-binding">44分钟</em></span>
	</div>
	<a class="shopguide-favor" href="javascript:" ng-click="favor()"> <!-- ngIf: isFavorShop -->
		<i ng-if="isFavorShop" class="icon-unfavorite ng-scope"></i> <!-- end ngIf: isFavorShop -->
		<!-- ngIf: !isFavorShop --> <!-- ngIf: isFavorShop --> <span
		ng-if="isFavorShop" class="ng-scope">取消收藏</span> <!-- end ngIf: isFavorShop -->
		<!-- ngIf: !isFavorShop -->
	</a>
</div>
