package com.hoo.ping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hoo.ping.domain.BCommentVO;
import com.hoo.ping.domain.BoardVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {

	private SqlSessionTemplate mybatis;
	
	@Autowired
	BoardDAOImpl(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	
	@Override
	public List<BoardVO> getBoardList() {
		return mybatis.selectList("BoardDAO.getBoardList");
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return mybatis.selectOne("BoardDAO.getBoard", vo);
	}

	@Override
	public BCommentVO getBComment(BoardVO vo) {
		return mybatis.selectOne("BoardDAO.getBComment", vo);
	}

	@Override
	public void insertBoard() {
		mybatis.insert("BoardDAO.insertBoard");
	}

	@Override
	public void insertBComment(BCommentVO vo) {
		mybatis.insert("BoardDAO.insertBComment", vo);
	}

	@Override
	public void updateAnswerYN(BCommentVO vo) {
		mybatis.update("BoardDAO.updateBComment", vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		mybatis.update("BoardDAO.updateBoard", vo);
	}

	@Override
	public void updateBComment(BCommentVO vo) {
		mybatis.update("BoardDAO.updateBComment", vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		mybatis.delete("BoardDAO.deleteBoard", vo);
	}

	@Override
	public void deleteBComment(BCommentVO vo) {
		mybatis.delete("BoardDAO.deleteBComment", vo);
	}

	
}
