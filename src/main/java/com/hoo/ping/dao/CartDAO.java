package com.hoo.ping.dao;

import com.hoo.ping.domain.CartVO;

public interface CartDAO {
	
	CartVO getCart(CartVO vo);
	
	void deleteCart(CartVO vo);
	
	void orderCart(CartVO vo);
}
