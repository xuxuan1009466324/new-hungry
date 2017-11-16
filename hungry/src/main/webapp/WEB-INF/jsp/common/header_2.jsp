<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="topbar shoptopbar" role="navigation"
	ng-class="{shoptopbar: state.type === 'shop'}">
	<div class="container clearfix">
		<h1>
			<a href="homePage.jsp" hardjump=""
				class="topbar-logo icon-logo"><span>饿了么</span></a>
		</h1>
		<a href="homePage.jsp" hardjump="" class="topbar-item topbar-homepage"
			ng-class="{'focus': $root.locationpath[0] === 'place'}">首页</a> <a
			href="order.jsp" hardjump="" class="topbar-item"
			ng-class="{'focus': $root.locationpath[1] === 'order'}">我的订单</a> <a
			href="#" target="_top" class="topbar-item cooperation">加盟合作</a>
		<nav class="topbar-nav">
			<a ng-href="//h5.ele.me/service/agreement" hardjump=""
				class="topbar-nav-link" target="_top" href="ruleCenter.jsp">规则中心</a>
			<div class="topbar-nav-link">
				<i class="topbar-nav-icon icon-mobile"></i>手机应用
				<div class="dropbox topbar-mobile-dropbox">
					<span>扫一扫, 手机订餐更方便</span> <img src="statics/images/appqc.95e532.png"
						class="topbar-nav-qrcode" alt="扫一扫下载饿了么手机 App">
				</div>
			</div>
			<div topbar-profilebox="">
				<div class="topbar-profilebox">
					<!-- ngIf: $root.user.avatar && $root.topbarType !== 'checkout' -->
					<span class="topbar-profilebox-avatar icon-profile ng-hide"
						ng-show="!$root.user.username"></span> <span
						ng-show="!$root.user.username" class="ng-hide"><a
						ng-href="//h5.ele.me/login/#redirect=https%3A%2F%2Fwww.ele.me%2Fshop%2F157017017"
						target="_top"
						href="https://h5.ele.me/login/#redirect=https%3A%2F%2Fwww.ele.me%2Fshop%2F157017017">登录/注册</a></span>
					<span class="topbar-profilebox-wrapper"
						ng-show="$root.user.username"> <!-- ngIf: $root.topbarType === 'checkout' -->
						<span class="topbar-profilebox-username ng-binding">327da2f4b</span>
						<!-- ngIf: $root.topbarType === 'checkout' --> <!-- ngIf: $root.topbarType !== 'checkout' -->
						<span class="topbar-profilebox-btn icon-arrow-down ng-scope"
						ng-if="$root.topbarType !== 'checkout'"></span> <!-- end ngIf: $root.topbarType !== 'checkout' -->
						<div class="dropbox topbar-profilebox-dropbox">
							<a class="icon-profile" href="personalCenter.jsp" hardjump="">个人中心</a> <a
								class="icon-star" href="favorite.jsp" hardjump="">我的收藏</a> <a
								class="icon-location" href="addressManage.jsp" hardjump="">我的地址</a> <a
								class="icon-setting" href="securityCenter.jsp" hardjump="">安全设置</a> <a
								class="icon-logout" href="login.jsp" ng-click="logout()">退出登录</a>
						</div>
					</span>
				</div>
			</div>
		</nav>
	</div>
</header>