package com.logo.action;

import java.util.Map;

import javax.annotation.Resource;

import com.logo.entity.Seller;
import com.logo.service.SellerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SellerAction extends ActionSupport{

	
	private static final long serialVersionUID = 1L;

	@Resource
	private SellerService sellerService;
	
	//跳转到商家首页
	public String toSellerIndex(){
		Seller seller = sellerService.selectSellerById(1L);
		Map<String,Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("seller",seller);
		
		return ActionSupport.SUCCESS;
	}
}
