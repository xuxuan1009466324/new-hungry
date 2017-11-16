package com.logo.entity;

public class Qualifications {

	private Long qualificationsId;
	//private Long sId;
	private Seller seller;
	private String examinationResults;
	private String unitName;
	private String businessAddress;
	private String legalRepresentative;
	private String licenseKey;
	private String businessScope;
	
	public Long getQualificationsId() {
		return qualificationsId;
	}
	public void setQualificationsId(Long qualificationsId) {
		this.qualificationsId = qualificationsId;
	}
	
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	@Override
	public String toString() {
		return "Qualifications [qualificationsId=" + qualificationsId + ", seller=" + seller + ", examinationResults="
				+ examinationResults + ", unitName=" + unitName + ", businessAddress=" + businessAddress
				+ ", legalRepresentative=" + legalRepresentative + ", licenseKey=" + licenseKey + ", businessScope="
				+ businessScope + "]";
	}
	public String getExaminationResults() {
		return examinationResults;
	}
	public void setExaminationResults(String examinationResults) {
		this.examinationResults = examinationResults;
	}
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	public String getBusinessAddress() {
		return businessAddress;
	}
	public void setBusinessAddress(String businessAddress) {
		this.businessAddress = businessAddress;
	}
	public String getLegalRepresentative() {
		return legalRepresentative;
	}
	public void setLegalRepresentative(String legalRepresentative) {
		this.legalRepresentative = legalRepresentative;
	}
	public String getLicenseKey() {
		return licenseKey;
	}
	public void setLicenseKey(String licenseKey) {
		this.licenseKey = licenseKey;
	}
	public String getBusinessScope() {
		return businessScope;
	}
	public void setBusinessScope(String businessScope) {
		this.businessScope = businessScope;
	}
	
}
