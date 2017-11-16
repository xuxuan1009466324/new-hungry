package com.logo.entity;

public class Food {
	
	private Long foodId;
	private String foodName;
	private String remarks;
	private Double price;
	//private Long categoryId;
	private Integer status;
	private Integer monthlySales;
	
	private Category category;
	
	
	
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Long getFoodId() {
		return foodId;
	}
	public void setFoodId(Long foodId) {
		this.foodId = foodId;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getMonthlySales() {
		return monthlySales;
	}
	public void setMonthlySales(Integer monthlySales) {
		this.monthlySales = monthlySales;
	}
	
}
