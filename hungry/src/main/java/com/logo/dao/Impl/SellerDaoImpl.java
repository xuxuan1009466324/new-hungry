package com.logo.dao.Impl;


import org.springframework.stereotype.Repository;

import com.logo.dao.BaseDao;
import com.logo.dao.SellerDao;
import com.logo.entity.Seller;

@Repository
public class SellerDaoImpl extends BaseDao implements SellerDao{

	public Seller selectSellerId(Long sId) {
		 Seller seller = (Seller) getSession().get(Seller.class,sId);
		return seller;
	}
	
}
