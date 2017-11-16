package com.logo.entity;

public class DishesSpecifications {
	
	private Long dishesSpecificationsId;
	private String specificationsName;
	private Double price;
	private Food food;
	
	public Food getFood() {
		return food;
	}
	public void setFood(Food food) {
		this.food = food;
	}
	public Long getDishesSpecificationsId() {
		return dishesSpecificationsId;
	}
	public void setDishesSpecificationsId(Long dishesSpecificationsId) {
		this.dishesSpecificationsId = dishesSpecificationsId;
	}

	public String getSpecificationsName() {
		return specificationsName;
	}
	public void setSpecificationsName(String specificationsName) {
		this.specificationsName = specificationsName;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "DishesSpecifications [dishesSpecificationsId=" + dishesSpecificationsId + ", specificationsName="
				+ specificationsName + ", price=" + price + ", food=" + food + "]";
	}
	
	

}
