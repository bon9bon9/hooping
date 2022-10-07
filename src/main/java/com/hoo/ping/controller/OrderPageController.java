package com.hoo.ping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoo.ping.domain.OrderPageVO;
import com.hoo.ping.service.OrderPageService;

@Controller
public class OrderPageController {

	@Autowired
	OrderPageService orderPageService;

//	@RequestMapping("order.do")
//	public String order(OrderPageVO vo, Model model) {
//		
//	}
	@RequestMapping("order.do")
	public String get(OrderPageVO vo, Model model) {
		model.addAttribute("getmember", orderPageService.getmember(vo));
		model.addAttribute("getcoupon", orderPageService.getcoupon(vo));
		/*
		 * SELECT * FROM member
		 */
		return "order";
	}

	@RequestMapping("saveOrderPay.do")
	public String insertPay(OrderPageVO vo) {
		orderPageService.insertPay(vo);
		/*
		 * INSERT INTO PAY ( ORDERSID, PRODUCTID, PAYCOLOR, PAYSIZE, PAYCOUNT, PAYDATE,
		 * PAYCOST, MEMBERID) VALUES (PAY_SEQ.nextval, #{orderId, }, #{prodectId},
		 * #{payColor}, #{paySize}, #{payCount}, SYSDATE, #{payCost}, #{memberId})
		 */
		return "redirect:/index.jsp";
	}
//
	@RequestMapping("saveOrderDV.do")
	public String insertDV(OrderPageVO vo) {
		orderPageService.insertDV(vo);
		/*
		 * INSERT INTO DELIVERY ( DELIVERYID, DELIVERYADD, DELIVERYTELL, DELIVERYPOST,
		 * DELIVERYDATE, REFUNDYN, MEMBERID) VALUES (DELIVERY_SEQ.nextval,
		 * #{deliveryAdd, }, #{deliveryTell}, #{deliveryPost}, SYSDATE, #{refundYN},
		 * memberId,)
		 */
		return "redirect:/index.jsp";
	}
}
