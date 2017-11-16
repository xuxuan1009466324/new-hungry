<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="sidebar-tabs">
	<div class="toolbar-tabs-middle">
		<a class="toolbar-btn icon-order toolbar-close" href="order.jsp" hardjump=""
			tooltip="我的订单" tooltip-placement="left" ubt-click="toolbar_order">
			<!-- ngIf: sidebarCount.uncompletedOrder > 0 -->
		</a>
		<div class="toolbar-separator"></div>
		<a class="toolbar-cartbtn icon-cart toolbar-open" href="shoppingCart_2.jsp"
			template="cart"
			ng-class="{'focus': (activeTemplate === 'cart' &amp;&amp; isSidebarOpen), 'toolbar-cartbtn-shownum': foodCount.count}"
			ubt-click="390">购物车<!-- ngIf: foodCount.count --></a>
		<div class="toolbar-separator"></div>
		<a class="toolbar-btn icon-notice toolbar-open modal-hide"
			href="personalData.jsp" template="message"
			ng-class="{'focus': (activeTemplate === 'message' &amp;&amp; isSidebarOpen), 'toolbar-open': user, 'modal-hide': user}"
			tooltip="我的信息" tooltip-placement="left" ubt-click="392"> <!-- ngIf: messageCount.count -->
		</a>
	</div>
	<div class="toolbar-tabs-bottom">
		<div class="toolbar-btn icon-QR-code">
			<div class="dropbox toolbar-tabs-dropbox">
				<a href="#" target="_top"><img src="statics/images/appqc.95e532.png"
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