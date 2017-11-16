<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<base href="${ctx}/">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta charset="utf-8">
<title>饿了么收银台</title>
<script src="statics/js/ubt.min.js" type="text/javascript"></script>
<script src="statics/js/perf.min.js" type="text/javascript"></script>
<link media="all" href="statics/css/payment.css" type="text/css" rel="stylesheet">
</head>
<body>
	<header id="header">
		<i class="eleme-icon logo"><h1 class="title">收银台</h1></i>
	</header>
	<main id="main">
	<main data-reactid=".0">
	<section class="container order" data-reactid=".0.0">
		<h3 class="text-muted" data-reactid=".0.0.0">订单详情</h3>
		<div class="order-detail clearfix" data-reactid=".0.0.1">
			<div class="pull-left" data-reactid=".0.0.1.0">
				<p class="text-muted" data-reactid=".0.0.1.0.0">订一客日式料理(天源店)外卖订单</p>
				<p class="hidden" data-reactid=".0.0.1.0.1">
					<span class="text-muted text-ellipsis order-desc"
						data-reactid=".0.0.1.0.1.0">钟 182****0202
						三宝墟教职工新村天源路沙河兆联教职工新村 I栋B梯103 - 鳗鱼小卷1份6粒 x1 火炙蟹棒寿司2件 x1 吞拿鱼小卷1份6粒
						x1 </span><a class="text-primary show-detail text-link"
						data-reactid=".0.0.1.0.1.1"><span
						data-reactid=".0.0.1.0.1.1.0">查看详情</span><span
						class="triangle triangle-down" data-reactid=".0.0.1.0.1.1.1"></span></a>
				</p>
				<div class="order-detail text-muted" data-reactid=".0.0.1.0.2">
					<p data-reactid=".0.0.1.0.2.0">钟 182****0202
						三宝墟教职工新村天源路沙河兆联教职工新村 I栋B梯103 - 鳗鱼小卷1份6粒 x1 火炙蟹棒寿司2件 x1 吞拿鱼小卷1份6粒
						x1</p>
					<a class="text-link" data-reactid=".0.0.1.0.2.1"><span
						data-reactid=".0.0.1.0.2.1.0">收起详情</span><span
						class="triangle triangle-up" data-reactid=".0.0.1.0.2.1.1"></span></a>
				</div>
			</div>
			<p class="pull-right" data-reactid=".0.0.1.1">
				<span data-reactid=".0.0.1.1.0"><span
					data-reactid=".0.0.1.1.0.0">支付金额：</span><strong
					class="text-lg text-highlight" data-reactid=".0.0.1.1.0.1"><span
						data-reactid=".0.0.1.1.0.1.0">¥</span><span
						data-reactid=".0.0.1.1.0.1.1">30.00</span></strong></span>
			</p>
		</div>
	</section>
	<section class="container paymethods" data-reactid=".0.1">
		<header data-reactid=".0.1.0">
			<h3 data-reactid=".0.1.0.0">请选择支付方式</h3>
			<p class="text-muted" data-reactid=".0.1.0.1">
				<span data-reactid=".0.1.0.1.0">剩余支付时间</span><span
					class="text-highlight" data-reactid=".0.1.0.1.1">14分49秒</span><span
					data-reactid=".0.1.0.1.2">，逾期订单将自动取消</span>
			</p>
		</header>
		<section class="native-payment-list clearfix hidden"
			data-reactid=".0.1.1">
			<p class="title text-muted" data-reactid=".0.1.1.0">
				<span data-reactid=".0.1.1.0.0">饿了么钱包支付</span><span
					class="text-highlight text-money" data-reactid=".0.1.1.0.1"></span>
			</p>
			<div class="pull-left" data-reactid=".0.1.1.1">
				<p class="text-error" data-reactid=".0.1.1.1.1"></p>
			</div>
			<p class="pull-left show-third text-primary" data-reactid=".0.1.1.2">
				<span class="show-third-payment hidden" data-reactid=".0.1.1.2.0"><span
					data-reactid=".0.1.1.2.0.0">查看其他支付方式</span><span
					class="iconfont icon-arrow" data-reactid=".0.1.1.2.0.1"></span></span>
			</p>
		</section>
		<section class="third-payment" data-reactid=".0.1.2">
			<div data-reactid=".0.1.2.0">
				<p class="title text-muted" data-reactid=".0.1.2.0.0">
					<span data-reactid=".0.1.2.0.0.0">第三方支付 </span><span
						class="text-highlight text-money" data-reactid=".0.1.2.0.0.1">
						￥30.00</span>
				</p>
				<ul class="third-payment-list clearfix" data-reactid=".0.1.2.0.1">
					<li class="alipay active" data-reactid=".0.1.2.0.1.$0"><div
							class="payment-lsit-item-content" data-reactid=".0.1.2.0.1.$0.0">
							<h4 data-reactid=".0.1.2.0.1.$0.0.0">支付宝</h4>
							<small class="text-muted" data-reactid=".0.1.2.0.1.$0.0.2"></small>
						</div></li>
					<li class="weixin" data-reactid=".0.1.2.0.1.$1"><div
							class="payment-lsit-item-content" data-reactid=".0.1.2.0.1.$1.0">
							<h4 data-reactid=".0.1.2.0.1.$1.0.0">微信支付</h4>
							<small class="text-muted" data-reactid=".0.1.2.0.1.$1.0.2"></small>
						</div></li>
				</ul>
			</div>
		</section>
		<footer class="paypassword" data-reactid=".0.1.3">
			<form class="hide" name="password" data-reactid=".0.1.3.1"
				action="https://webpay.faas.ele.me/?merchantId=5&amp;transOrderInfoList=%5B%7B%22busiOrderNo%22%3A%221213399242998643826%22%2C%22partnerId%22%3A501001%7D%5D&amp;userId=87835953&amp;from=WAIMAI_PC&amp;xShard=loc%3D113.35992%2C23.18332">
				<div class="title" data-reactid=".0.1.3.1.0">
					<p data-reactid=".0.1.3.1.0.0">
						<span data-reactid=".0.1.3.1.0.0.0">为保障您的钱包资金安全, 请输入</span><strong
							data-reactid=".0.1.3.1.0.0.1">支付密码</strong>
					</p>
				</div>
				<section class="form-group" data-reactid=".0.1.3.1.1">
					<input placeholder="请输入6位支付密码" class="" value=""
						data-reactid=".0.1.3.1.1.0" type="password"><span
						class="text-muted hidden" data-reactid=".0.1.3.1.1.1">如您忘记密码,
						请前往商家版手机端修改</span><a class="text-primary text-link"
						data-reactid=".0.1.3.1.1.2">忘记密码?</a>
				</section>
				<p class="hidden" data-reactid=".0.1.3.1.2"></p>
			</form>
			<section class="messagebox-backdrop" style="display: none;"
				data-reactid=".0.1.3.2">
				<div class="messagebox " data-reactid=".0.1.3.2.0"></div>
			</section>
			<section class="modal-backdrop" style="display: none;"
				data-reactid=".0.1.3.3">
				<div class="modal" data-reactid=".0.1.3.3.0">
					<section class="timeout clearfix" data-reactid=".0.1.3.3.0.0">
						<header class="clearfix" data-reactid=".0.1.3.3.0.0.0">
							<span class="icon-close pull-right text-muted"
								data-reactid=".0.1.3.3.0.0.0.0">x</span>
						</header>
						<i class="eleme-icon icon-error pull-left"
							data-reactid=".0.1.3.3.0.0.1"></i>
						<div class="pull-left clearfix" data-reactid=".0.1.3.3.0.0.2">
							<strong data-reactid=".0.1.3.3.0.0.2.0"></strong>
							<p class="text-muted" data-reactid=".0.1.3.3.0.0.2.1"></p>
							<footer data-reactid=".0.1.3.3.0.0.2.2">
								<button class="btn btn-lg btn-primary"
									data-reactid=".0.1.3.3.0.0.2.2.0"></button>
								<button style="display: none;" class="btn btn-default btn-lg"
									data-reactid=".0.1.3.3.0.0.2.2.1"></button>
							</footer>
						</div>
					</section>
				</div>
			</section>
			<button type="button" class="btn btn-success btn-lg"
				data-reactid=".0.1.3.4">确认支付</button>
		</footer>
	</section>
	<section class="messagebox-backdrop" style="display: none;"
		data-reactid=".0.2">
		<div class="messagebox " data-reactid=".0.2.0"></div>
	</section>
	</main></main>
	<!-- <script src="statics/js/vendor.34084a.js" type="text/javascript"></script> -->
	<script src="statics/js/app.f9baed.js" type="text/javascript"></script>
</body>
</html>