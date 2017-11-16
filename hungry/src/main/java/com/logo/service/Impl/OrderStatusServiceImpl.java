package com.logo.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.logo.dao.OrderStatusDao;
import com.logo.entity.OrderStatus;
import com.logo.service.OrderStatusService;

@Service
public class OrderStatusServiceImpl implements OrderStatusService {

	@Resource
	private OrderStatusDao orderStatusDao ;
	
	public List<OrderStatus> selectAll() {
		
		return orderStatusDao.selectAll();
	}

}
