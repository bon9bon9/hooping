package com.hoo.ping.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

	private int memberId;
	private String memberPwd;
	private String memberName;
	private String memberEmail;
	private int memberPhoneNum;
	private String memberRating;
	private Date memberSignUpDate;
	private String memberBaseAddress;
	private String memberInstagramId;

}
