package com.hoo.ping.domain;

import java.util.Date;

import lombok.Data;

@Data
public class RCommentVO {
	
	private int rCommentId;
	private String memberId;
	private String rCommentUser;
	private Date rCommentDate;
	private String rCommentContents;
	private int reviewId;
}
