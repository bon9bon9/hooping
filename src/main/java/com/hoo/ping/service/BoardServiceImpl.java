package com.hoo.ping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hoo.ping.dao.BoardDAO;
import com.hoo.ping.domain.BCommentVO;
import com.hoo.ping.domain.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	private final BoardDAO boardDAO;
	
	@Autowired
	BoardServiceImpl(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}
	
	@Override
	public List<BoardVO> getBoardList() {
		return boardDAO.getBoardList();
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public BCommentVO getBComment(BoardVO vo) {
		
		
		return boardDAO.getBComment(vo);
	}

	@Override
	public void insertBoard() {
		boardDAO.insertBoard();
	}

	@Override
	public void insertBComment(BCommentVO vo) {
		boardDAO.insertBComment(vo);
		
		boardDAO.updateAnswerYN(vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public void updateBComment(BCommentVO vo) {
		boardDAO.updateBComment(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public void deleteBComment(BCommentVO vo) {
		boardDAO.deleteBComment(vo);
	}

	
}
