package com.hoo.ping.service;

import com.hoo.ping.domain.CartVO;

public interface CartService {
	
	CartVO getCart(CartVO vo);
	
	void deleteCart(CartVO vo);
	
	void orderCart(CartVO vo);

}
