package com.logo.entity;


public class OrderDetails {
	
	private Long orderDetailsId;
	//private Long foodId;
	private Integer number;
	private Double price;
	//private Long orderId;
	private Double totalPrice;
	//private Long satisfactionDegreeId;
	private String evaluationReasons;
	
	private Food food;
	private SatisfactionDegree satisfactionDegree;
	private Order order;
	
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public SatisfactionDegree getSatisfactionDegree() {
		return satisfactionDegree;
	}
	public void setSatisfactionDegree(SatisfactionDegree satisfactionDegree) {
		this.satisfactionDegree = satisfactionDegree;
	}
	public Food getFood() {
		return food;
	}
	public void setFood(Food food) {
		this.food = food;
	}
	public Long getOrderDetailsId() {
		return orderDetailsId;
	}
	public void setOrderDetailsId(Long orderDetailsId) {
		this.orderDetailsId = orderDetailsId;
	}
	
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getEvaluationReasons() {
		return evaluationReasons;
	}
	public void setEvaluationReasons(String evaluationReasons) {
		this.evaluationReasons = evaluationReasons;
	}

	
	
}
