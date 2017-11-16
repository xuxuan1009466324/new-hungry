package com.logo.entity;

import java.sql.Time;
import java.util.Date;

public class Seller {
	
	private Long sId;
	private String sellerName;
	private Double serviceAttitude;
	private Double dishesEvaluation;
	private String detailedAddress;
	private Time startBusinessHours; 
	private Time endBusinessHours; 
	private String distributionAgent;
	private String introduce;
	private String notice;
	private Double sendPrice;
	private Double distributionFee;
	private Integer averageSpeedOfService;
	private Integer monthlySales;
	private Date registrationTime; 
	private String fixedTelephone;
	private Integer acceptReservations;
	private Integer evaluationQuantity;
	private String phone;
	private Integer status;
	
	
	public Long getsId() {
		return sId;
	}
	public void setsId(Long sId) {
		this.sId = sId;
	}
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	public Double getServiceAttitude() {
		return serviceAttitude;
	}
	public void setServiceAttitude(Double serviceAttitude) {
		this.serviceAttitude = serviceAttitude;
	}
	public Double getDishesEvaluation() {
		return dishesEvaluation;
	}
	public void setDishesEvaluation(Double dishesEvaluation) {
		this.dishesEvaluation = dishesEvaluation;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	public Time getStartBusinessHours() {
		return startBusinessHours;
	}
	public void setStartBusinessHours(Time startBusinessHours) {
		this.startBusinessHours = startBusinessHours;
	}
	public Time getEndBusinessHours() {
		return endBusinessHours;
	}
	public void setEndBusinessHours(Time endBusinessHours) {
		this.endBusinessHours = endBusinessHours;
	}
	public String getDistributionAgent() {
		return distributionAgent;
	}
	public void setDistributionAgent(String distributionAgent) {
		this.distributionAgent = distributionAgent;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	public Double getSendPrice() {
		return sendPrice;
	}
	public void setSendPrice(Double sendPrice) {
		this.sendPrice = sendPrice;
	}
	public Double getDistributionFee() {
		return distributionFee;
	}
	public void setDistributionFee(Double distributionFee) {
		this.distributionFee = distributionFee;
	}
	public Integer getAverageSpeedOfService() {
		return averageSpeedOfService;
	}
	public void setAverageSpeedOfService(Integer averageSpeedOfService) {
		this.averageSpeedOfService = averageSpeedOfService;
	}
	public Integer getMonthlySales() {
		return monthlySales;
	}
	public void setMonthlySales(Integer monthlySales) {
		this.monthlySales = monthlySales;
	}
	public Date getRegistrationTime() {
		return registrationTime;
	}
	public void setRegistrationTime(Date registrationTime) {
		this.registrationTime = registrationTime;
	}
	public String getFixedTelephone() {
		return fixedTelephone;
	}
	public void setFixedTelephone(String fixedTelephone) {
		this.fixedTelephone = fixedTelephone;
	}
	public Integer getAcceptReservations() {
		return acceptReservations;
	}
	public void setAcceptReservations(Integer acceptReservations) {
		this.acceptReservations = acceptReservations;
	}
	public Integer getEvaluationQuantity() {
		return evaluationQuantity;
	}
	public void setEvaluationQuantity(Integer evaluationQuantity) {
		this.evaluationQuantity = evaluationQuantity;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
}
