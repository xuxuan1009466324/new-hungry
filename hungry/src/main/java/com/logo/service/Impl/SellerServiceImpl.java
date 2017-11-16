package com.logo.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.logo.dao.SellerDao;
import com.logo.entity.Seller;
import com.logo.service.SellerService;

@Service
public class SellerServiceImpl implements SellerService{

	@Resource
	private SellerDao sellerDao ;
	
	public Seller selectSellerById(Long sId) {
		Seller seller = sellerDao.selectSellerId(sId);
		return seller;
	}

	
}
