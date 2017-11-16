package com.logo.dao;

import java.util.List;

import com.logo.entity.OrderStatus;

public interface OrderStatusDao {

	public List<OrderStatus> selectAll();
}
