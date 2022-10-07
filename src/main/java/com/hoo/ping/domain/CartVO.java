package com.hoo.ping.domain;

import lombok.Data;

@Data
public class CartVO {
	private int cartId;
	private String memberId; // 세션 담기 
	private int cartCount; 
	private String cartSize;
	private String cartColor; 
	private int productId;  
}
