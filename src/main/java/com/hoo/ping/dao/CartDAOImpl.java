package com.hoo.ping.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hoo.ping.domain.CartVO;

@Repository
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;


	@Override
	public CartVO getCart(CartVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("CartDAO.getCart",vo);
	}

	@Override
	public void deleteCart(CartVO vo) {
		mybatis.delete("CartDAO.deleteCart",vo);
		
	}

	@Override
	public void orderCart(CartVO vo) {
		
		mybatis.selectOne("CartDAO.orderCart", vo);
		
	}

	
}
