package com.logo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.logo.entity.OrderStatus;

@RunWith(value=SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:application-hibernate.xml")
public class OrderStatusDaoTest {

	@Resource
	private OrderStatusDao orderStatusDao ;
	
	@Test
	public void testSelectAll(){
		List<OrderStatus> list = orderStatusDao.selectAll();
		System.err.println(list);
	}
}
