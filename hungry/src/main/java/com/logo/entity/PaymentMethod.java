package com.logo.entity;

public class PaymentMethod {
	private Long paymentMethodId;
	private String cancellationOrderName;
	public Long getPaymentMethodId() {
		return paymentMethodId;
	}
	public void setPaymentMethodId(Long paymentMethodId) {
		this.paymentMethodId = paymentMethodId;
	}
	public String getCancellationOrderName() {
		return cancellationOrderName;
	}
	public void setCancellationOrderName(String cancellationOrderName) {
		this.cancellationOrderName = cancellationOrderName;
	}
	@Override
	public String toString() {
		return "Oaymentmethod [paymentMethodId=" + paymentMethodId + ", cancellationOrderName=" + cancellationOrderName
				+ "]";
	}
	
	
}
