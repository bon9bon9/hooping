package com.hoo.ping.service;

import java.util.List;

import com.hoo.ping.domain.BCommentVO;
import com.hoo.ping.domain.BoardVO;

public interface BoardService {
	
	List <BoardVO> getBoardList(); 
		
	BoardVO getBoard(BoardVO vo);
	
	BCommentVO getBComment(BoardVO vo);
	
	void insertBoard();
	
	void insertBComment(BCommentVO vo);
	
	void updateBoard(BoardVO vo);
	
	void updateBComment(BCommentVO vo);
	
	void deleteBoard(BoardVO vo);
	
	void deleteBComment(BCommentVO vo);
	
}