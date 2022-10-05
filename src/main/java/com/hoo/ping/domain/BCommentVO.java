package com.hoo.ping.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BCommentVO {
	
	private int bCommentId;
	private String bCommentUser;
	private Date bCommentDate;
	private String bCommentContents;
	private int boardId;
	
}
