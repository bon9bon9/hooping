package com.hoo.ping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoo.ping.service.ProductService;

@Controller
@RequestMapping("/best/")
public class BestController {
	
	private ProductService productService;
	
	@Autowired
	public BestController(ProductService productService) {
		this.productService = productService;
	}
	
	@RequestMapping("getBestProductList.do")
	public String getBestProductList() {
		
//		productService.getBestProductList();
		
		return "/product/best";
	}
}
