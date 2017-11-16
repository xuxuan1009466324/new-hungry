package com.logo.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.logo.entity.OrderStatus;
import com.logo.service.OrderStatusService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderStatusAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	@Resource
	private OrderStatusService orderStatusService;
	
	public String toIndex(){
		List<OrderStatus> orderStatuslist = orderStatusService.selectAll();
		Map<String,Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("orderStatuslist", orderStatuslist);
		
		return ActionSupport.SUCCESS;
	}

}
