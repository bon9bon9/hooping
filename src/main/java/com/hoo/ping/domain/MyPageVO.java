package com.hoo.ping.domain;

import lombok.Data;

@Data
public class MyPageVO {
	private String memberName;
	private String memberRating;
	private String memberPhoneNum;
	private int couponId;
	private String couponName;
	private int couponPrice;
	
	private String payDate;
	private int payNum;
	private String productName;
	private int payCount;
	private int payCost;
	private int ordersId;
	private int productId;
	
	// 리뷰아이디
	private String reviewId;
	// 리뷰제목
	private String reviewTitle;
	// 리뷰날짜
	private String reviewDate;
	// 리뷰댓글
	// select count(*) from reviewcomment where 리뷰번호=리뷰번호
	// 리뷰좋아요
	private int reviewThumbs;
	
}
