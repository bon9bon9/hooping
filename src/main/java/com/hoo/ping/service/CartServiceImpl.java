package com.hoo.ping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.hoo.ping.dao.CartDAOImpl;
import com.hoo.ping.domain.CartVO;


@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	public CartDAOImpl cartDAOImpl;

	
	@Override
	public CartVO getCart(CartVO vo) {
		// TODO Auto-generated method stub
		return cartDAOImpl.getCart(vo);
	}
	

	@Override
	public void deleteCart(CartVO vo) {
		cartDAOImpl.deleteCart(vo);
		
	}

	@Override
	public void orderCart(CartVO vo) {
		// member product vo 받아오기
		cartDAOImpl.orderCart(vo);
		
	}

	
}
