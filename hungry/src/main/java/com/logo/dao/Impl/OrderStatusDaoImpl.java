package com.logo.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.logo.dao.BaseDao;
import com.logo.dao.OrderStatusDao;
import com.logo.entity.OrderStatus;

@Repository
public class OrderStatusDaoImpl extends BaseDao implements OrderStatusDao {

	
	public List<OrderStatus> selectAll() {
		return getSession().createQuery("from OrderStatus").list();
	}

}
