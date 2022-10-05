package com.hoo.ping.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.hoo.ping.domain.RCommentVO;
import com.hoo.ping.domain.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	private SqlSessionTemplate mybatis;
	
	@Override
	public ReviewVO getReview(ReviewVO vo) {
		return mybatis.selectOne("reviewDAO.getReview", vo);
	}

	@Override
	public ReviewVO getMyReview(ReviewVO vo) {
		return mybatis.selectOne("reviewDAO.getMyReview");
	}

	@Override
	public List<ReviewVO> getReviewList() {
		return mybatis.selectList("reviewDAO.getReviewList");
	}

	@Override
	public void insertReview(ReviewVO vo) {
		mybatis.insert("reviewDAO.insertReview", vo);
	}

	@Override
	public List<RCommentVO> getRCommentList(ReviewVO vo) {
		return mybatis.selectList("reviewDAO.getRCommentList", vo);
	}
	
	@Override
	public void insertRComment(RCommentVO vo) {
		mybatis.insert("reviewDAO.insertRComment", vo);
	}

	@Override
	public ReviewVO getBestReview() {
		return mybatis.selectOne("reviewDAO.getBestReview");
	}

	@Override
	public void updateBestYN(ReviewVO vo) {
		mybatis.insert("reviewDAO.insertBestYN");
	}

	@Override
	public List<ReviewVO> getReviewListWithBest(ReviewVO vo) {
		return mybatis.selectList("reviewDAO.getReviewListWithBest", vo);
	}

	


}
