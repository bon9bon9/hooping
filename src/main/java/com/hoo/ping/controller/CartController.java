package com.hoo.ping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoo.ping.domain.CartVO;
import com.hoo.ping.service.CartService;

@Controller
@RequestMapping("/cart/")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
//	@RequestMapping("Cart.do")
//	public String cart(CartVO vo, Model model) {
//		
//		
//		CartVO VO = cartService.getCart(vo);
//		
//		model.addAttribute("cart", VO);
//		
//		return "Cart";
//	
//	} // 얘는 프로덕트에서 해야할 일이에요.
	
	
	
	@RequestMapping("cart.do")
	public String cart() {
		
		System.out.println("=== cart.do ===");
		return "/product/cart";
		
	}
	
	@RequestMapping("deleteCart.do")
	public String deleteCart(CartVO vo) {
		
		cartService.deleteCart(vo);
				
		return "redirect:/Cart.do";
	}

	
	@RequestMapping("orderCart.do")
	public String orderCart(CartVO vo) {
		System.out.println("=== orderCart.do ===");
//		cartService.orderCart(vo);
		
		return "/product/order";
	}
	
	
	
}
