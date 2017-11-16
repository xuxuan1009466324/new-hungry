<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<ul class="profile-sidebar" role="navigation" profile-sidebar="">
	<li class="profile-sidebar-section"><h2
			class="profile-sidebar-sectiontitle"
			ng-class="{ active: pageName === 'profile' }">
			<i class="icon-line-home"></i><a href="personalCenter.jsp">个人中心</a>
		</h2></li>
	<li class="profile-sidebar-section"><h2
			class="profile-sidebar-sectiontitle">
			<i class="icon-line-order"></i>我的订单
		</h2>
		<ul>
			<li ng-class="{ active: pageName === 'order' }"><a href="order.jsp">近三个月订单</a></li>
			<li ng-class="{ active: pageName === 'order-unrated' }"><a
				href="comment.jsp">待评价订单<!-- ngIf: unratedNumber -->  <!-- end ngIf: unratedNumber --></a></li>
			<li ng-class="{ active: pageName === 'order-refunding' }"><a
				href="#">退单记录</a></li>
		</ul></li>
	<li class="profile-sidebar-section"><h2
			class="profile-sidebar-sectiontitle">
			<i class="icon-yen"></i>我的资产
		</h2>
		<ul>
			<li ng-class="{ active: pageName === 'hongbao' }"><a href="#">我的红包</a></li>
			<li ng-class="{ active: pageName === 'balance' }"><a href="#">账户余额</a></li>
			<li ng-class="{ active: pageName === 'points' }"><a href="#">我的金币</a></li>
		</ul></li>
	<li class="profile-sidebar-section"><h2
			class="profile-sidebar-sectiontitle">
			<i class="icon-line-profile"></i>我的资料
		</h2>
		<ul>
			<li ng-class="{ active: pageName === 'info' }"><a href="personalData.jsp">个人资料</a></li>
			<li ng-class="{ active: pageName === 'address' }" class="active"><a
				href="addressManage.jsp">地址管理</a></li>
			<li ng-class="{ active: pageName === 'security-center' }"><a
				href="securityCenter.jsp">安全中心</a></li>
			<li ng-class="{ active: pageName === 'changepassword' }"><a
				href="modifyPassword.jsp">修改密码</a></li>
		</ul></li>
	<li class="profile-sidebar-section"><h2
			class="profile-sidebar-sectiontitle"
			ng-class="{ active: pageName === 'favor' }">
			<a href="favorite.jsp"><i class="icon-order-favor"></i>我的收藏</a>
		</h2></li>
</ul>