package com.hoo.ping.service;

import com.hoo.ping.domain.OrderPageVO;

public interface OrderPageService {

	OrderPageVO getmember(OrderPageVO vo);

	void insertPay(OrderPageVO vo);

	void insertDV(OrderPageVO vo);

	OrderPageVO getcoupon(OrderPageVO vo);
	
}
