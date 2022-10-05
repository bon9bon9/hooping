package com.hoo.ping.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hoo.ping.dao.ReviewDAO;
import com.hoo.ping.domain.RCommentVO;
import com.hoo.ping.domain.ReviewVO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public ReviewVO getReview(ReviewVO vo) {
		return reviewDAO.getReview(vo);
	}

	@Override
	public ReviewVO getMyReview(ReviewVO vo) {
		return reviewDAO.getMyReview(vo);
	}

	@Override
	public List<ReviewVO> getReviewList() {
		return reviewDAO.getReviewList();
	}

	@Override
	public void insertReview(ReviewVO vo) {
		reviewDAO.insertReview(vo);
	}
	
	@Override
	public List<RCommentVO> getRCommentList(ReviewVO vo) {
		return reviewDAO.getRCommentList(vo);
	}
	
	@Override
	public void insertRComment(RCommentVO vo) {
		reviewDAO.insertRComment(vo);
	}
	@Override
	public ReviewVO getBestReview() {
		return reviewDAO.getBestReview();
	}

	@Override
	public void insertBestYN(ReviewVO vo) {
		reviewDAO.insertBestYN(vo);
	}

	@Override
	public List<ReviewVO> getReviewListWithBest(ReviewVO vo) {
		return reviewDAO.getReviewListWithBest(vo);
	}

	

	
}
