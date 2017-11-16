package com.logo.entity;

import java.sql.Date;

public class Order {

	private Long orderId;
	//private Long uId;
	private String orderNo;
	private String fixedTelephone;
	private String phone;
	//private Long sId;
	private String remarks;
	private Double total;
	private Double actualPayment;
	//private Long orderStatusId;
	private Date orderTime;
	private Date finishTime ;
	private Date payhTime;
	private String distributionAgent;
	private String detailedAddress;
	//private Long paymentMethodId;
	private Date serviceTime;
	//private Long cancellationOrderId;
	private String cancellationOrderReason;
	private Long sellerService;
	private Integer roomSpeed;
	private Integer havePicture;
	
	private User user;
	private Seller seller;
	private OrderStatus orderStatus;
	private PaymentMethod paymentMethod;
	private CancellationOrder cancellationOrder;
	public Long getOrderId() {
		return orderId;
	}
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getFixedTelephone() {
		return fixedTelephone;
	}
	public void setFixedTelephone(String fixedTelephone) {
		this.fixedTelephone = fixedTelephone;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public Double getActualPayment() {
		return actualPayment;
	}
	public void setActualPayment(Double actualPayment) {
		this.actualPayment = actualPayment;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public Date getFinishTime() {
		return finishTime;
	}
	public void setFinishTime(Date finishTime) {
		this.finishTime = finishTime;
	}
	public Date getPayhTime() {
		return payhTime;
	}
	public void setPayhTime(Date payhTime) {
		this.payhTime = payhTime;
	}
	public String getDistributionAgent() {
		return distributionAgent;
	}
	public void setDistributionAgent(String distributionAgent) {
		this.distributionAgent = distributionAgent;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	public Date getServiceTime() {
		return serviceTime;
	}
	public void setServiceTime(Date serviceTime) {
		this.serviceTime = serviceTime;
	}
	public String getCancellationOrderReason() {
		return cancellationOrderReason;
	}
	public void setCancellationOrderReason(String cancellationOrderReason) {
		this.cancellationOrderReason = cancellationOrderReason;
	}
	public Long getSellerService() {
		return sellerService;
	}
	public void setSellerService(Long sellerService) {
		this.sellerService = sellerService;
	}
	public Integer getRoomSpeed() {
		return roomSpeed;
	}
	public void setRoomSpeed(Integer roomSpeed) {
		this.roomSpeed = roomSpeed;
	}
	public Integer getHavePicture() {
		return havePicture;
	}
	public void setHavePicture(Integer havePicture) {
		this.havePicture = havePicture;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	public OrderStatus getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}
	public PaymentMethod getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(PaymentMethod paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public CancellationOrder getCancellationOrder() {
		return cancellationOrder;
	}
	public void setCancellationOrder(CancellationOrder cancellationOrder) {
		this.cancellationOrder = cancellationOrder;
	}
	
}
