package com.hoo.ping.domain;

import lombok.Data;

@Data
public class ProductVO {
	
	private int productId;
	private char productGender;
	private String productName;
	private int productPrice;
	private String productType;
	private String productInfo;
	private String productCo;
	private int eventId;

}
