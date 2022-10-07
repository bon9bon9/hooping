package com.hoo.ping.dao;

import com.hoo.ping.domain.OrderPageVO;

public interface OrderPageDAO {

	OrderPageVO getmember(OrderPageVO vo);

	void insertPay(OrderPageVO vo);

	void insertDV(OrderPageVO vo);

	OrderPageVO getcoupon(OrderPageVO vo);


}
