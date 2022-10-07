package com.hoo.ping.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hoo.ping.domain.OrderPageVO;

@Repository("orderPageDAO")
public class OrderPageDAOIpml implements OrderPageDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public OrderPageVO getmember(OrderPageVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("pay.getmember", vo);
	}

	@Override
	public void insertPay(OrderPageVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("Pay.insertPay", vo);
	}

	@Override
	public void insertDV(OrderPageVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("Pay.insertDV", vo);
	}

	@Override
	public OrderPageVO getcoupon(OrderPageVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("pay.getcoupon", vo);
	}
}
