package com.logo.entity;

import java.util.Date;

public class User {
	private Long uId;
	private String userNo;
	private String userName;
	private String phone;
	private String email;
	private String password;
	private Date registrationTime;
	private Integer havePicture;
	private Integer status;
	
	public Integer getHavePicture() {
		return havePicture;
	}
	public void setHavePicture(Integer havePicture) {
		this.havePicture = havePicture;
	}
	
	public Long getuId() {
		return uId;
	}
	public void setuId(Long uId) {
		this.uId = uId;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegistrationTime() {
		return registrationTime;
	}
	public void setRegistrationTime(Date registrationTime) {
		this.registrationTime = registrationTime;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "User [uId=" + uId + ", userNo=" + userNo + ", userName=" + userName + ", phone=" + phone + ", email="
				+ email + ", password=" + password + ", registrationTime=" + registrationTime + ", status=" + status
				+ "]";
	}
	
	
	

}
