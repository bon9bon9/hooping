package com.hoo.ping.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private int reviewId;
	private int reviewTotal;
	private String reviewQuality;
	private String reviewTitle;
	private String reviewText;
	private Date reviewDate;
	private int reviewHeight;
	private int reviewWeight;
	private String reviewImg;
	private int reviewThumbs;
	private int orderId;
	private int productId;
	private char reviewBestYN;
	
}

