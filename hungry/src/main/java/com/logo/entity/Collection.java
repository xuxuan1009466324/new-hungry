package com.logo.entity;

public class Collection {

	private Long collectionId;
	private Seller seller;
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Long getCollectionId() {
		return collectionId;
	}
	public void setCollectionId(Long collectionId) {
		this.collectionId = collectionId;
	}
	@Override
	public String toString() {
		return "Collection [collectionId=" + collectionId + ", seller=" + seller + ", user=" + user + "]";
	}
	
	
	
	
	
}
