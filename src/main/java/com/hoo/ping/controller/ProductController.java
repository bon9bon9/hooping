package com.hoo.ping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product/")
public class ProductController {
	
	
	@RequestMapping("getProduct.do")
	public String getProduct() {
		
		return "/product/product";
	}
	
	@RequestMapping("getProductList.do")
	public String getProductList() {
		
		return "/product/category";
	}
	
}
