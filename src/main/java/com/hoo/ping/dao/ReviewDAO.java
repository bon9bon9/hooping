package com.hoo.ping.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hoo.ping.domain.RCommentVO;
import com.hoo.ping.domain.ReviewVO;

public interface ReviewDAO {

	ReviewVO getReview(ReviewVO vo);

	ReviewVO getMyReview(ReviewVO vo);

	List<ReviewVO> getReviewList();

	void insertReview(ReviewVO vo);

	List <RCommentVO> getRCommentList(ReviewVO vo);
	
	void insertRComment(RCommentVO vo);

	public ReviewVO getBestReview();

	public void insertBestYN(ReviewVO vo);

	public List<ReviewVO> getReviewListWithBest(ReviewVO vo);


}
