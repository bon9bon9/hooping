package com.hoo.ping.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hoo.ping.domain.ReviewVO;
import com.hoo.ping.domain.RCommentVO;

public interface ReviewService {
	
	ReviewVO getReview(ReviewVO vo);
	
	ReviewVO getMyReview(ReviewVO vo);
	
	List <ReviewVO> getReviewList();
	
	void insertReview(ReviewVO vo);
	
	List <RCommentVO> getRCommentList(ReviewVO vo);
	
	void insertRComment(RCommentVO vo);
	
	ReviewVO getBestReview();
	
	void updateBestYN(ReviewVO vo);
	
	List <ReviewVO> getReviewListWithBest(ReviewVO vo);
	
	
	
	
	
	
//	void updateReview();
	
//	void deleteReview();

	
	
}
