package com.hoo.ping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hoo.ping.dao.OrderPageDAO;
import com.hoo.ping.domain.OrderPageVO;

@Repository("orderPageService")


public class OrderPageServiceImpl implements OrderPageService{

	@Autowired
	OrderPageDAO orderPageDAO;



	@Override
	public OrderPageVO getmember(OrderPageVO vo) {
		// TODO Auto-generated method stub
		return orderPageDAO.getmember(vo);
	}


	@Override
	public void insertPay(OrderPageVO vo) {
		// TODO Auto-generated method stub
		orderPageDAO.insertPay(vo);
	}


	@Override
	public void insertDV(OrderPageVO vo) {
		// TODO Auto-generated method stub
		orderPageDAO.insertDV(vo);
	}


	@Override
	public OrderPageVO getcoupon(OrderPageVO vo) {
		// TODO Auto-generated method stub
		return orderPageDAO.getcoupon(vo);
	}
	
}
