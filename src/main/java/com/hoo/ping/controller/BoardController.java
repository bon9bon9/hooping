package com.hoo.ping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoo.ping.domain.BCommentVO;
import com.hoo.ping.domain.BoardVO;
import com.hoo.ping.service.BoardService;

@Controller
public class BoardController {
	
	private BoardService boardService;
	
	@Autowired
	BoardController(BoardService boardService){
		this.boardService = boardService;
	}
	
	// 게시판 호출
	@RequestMapping("getBoardList.do")
	public String getBoardList (Model model) {
		
		List <BoardVO> bList = boardService.getBoardList();
		/*
		 * SQL
		 * SELECT * 
		 * 	 FROM board
		 *  ORDER BY boardId DESC
		 */
		model.addAttribute("bList", bList);
		
		return "serviceBoard";
	}
	
	// 특정 문의글을 클릭했을 때
	@RequestMapping("getBoard.do")
	public String getBoard (BoardVO vo, Model model) {
		
		// 해당 게시글의 아이디와 일치하는 게시글 대입
		vo = boardService.getBoard(vo);
		/*
		 * SQL
		 * SELECT * 
		 * 	 FROM board
		 *  WHERE boardId = #{boardId}		
		 */
		
		// 모델에 게시글 저장
		model.addAttribute("board", vo);
		
		// 해당 게시글이 답글을 받은 상태라면
		if(vo.getAnswerYN() == 'Y') {
			
			// 해당 게시글의 답글을 호출
			BCommentVO bcvo = boardService.getBComment(vo);
			/*
			 * SQL
			 * SELECT *
			 * 	 FROM bComment
			 *  WHERE boardId = #{boardId}		
			 */
			// 모델에 답글 저장
			model.addAttribute("bComment", bcvo);
		}
		
		return "serviceArticle";
	}
	
	// 문의글 저장
	@RequestMapping("saveBoard.do")
	public String saveBoard (BoardVO vo) {
		
		boardService.insertBoard();
		/*
		 * SQL
		 * INSERT INTO board ( BOARDID, BOARDTITLE, BOARDCONTENT, 
		 * 					   BOARDDATE, ANSWERYN, MEMBERID)
		 * VALUES (board_seq.nextval, #{boardTitle}, #{boardContent}, 
		 * 		   SYSDATE, N, #{memberId})
		 */
		
		return "redirect:/getBoardList";
	}
	
	// 댓글 저장
	@RequestMapping("saveBComment.do")
	public String saveBComment (BCommentVO vo) {
		
		boardService.insertBComment(vo);
		/*
		 * SQL
		 * INSERT INTO bcomment ( BCOMMENTSID, BCOMMENTUSER, BCOMMENTDATE, 
		 * 					   BCOMMENTCONTENTS, BOARDID
		 * VALUES ( bcomment_seq, #{bCommentUser}, SYSDATE, #{bCommentContents}, #{boardId} )
		 */
		
		/*
		 * boardService.insertBComment(vo)에서
		 * boardDAO.updateAnswerYN(vo)를 진행
		 * 
		 * SQL
		 * UPDATE board
		 *    SET ANSWERYN = Y
		 *  WHERE boardId = #{boardId}
		 */
		
		return "redirect:/getBoardList";
	}
	
	@RequestMapping("updateBoard.do")
	public String updateBoard(BoardVO vo) {
		
		boardService.updateBoard(vo);
		/*
		 * SQL
		 * UPDATE board
		 * 	  SET boardTitle = #{boardTitle},
		 * 		  boardContent = #{boardContent}
		 *  WHERE boardId = #{boardId}
		 * 
		 */
		return "redirect:/getBoardList";
	}
	
	@RequestMapping("updateBComment.do")
	public String updateBComment(BCommentVO vo) {
		
		boardService.updateBComment(vo);
		/*
		 * SQL
		 * UPDATE bComment
		 * 	  SET boardContent = #{bCommentContents}
		 *  WHERE bCommentId = #{bCommentId}
		 * 
		 */
		
		return "redirect:/getBoardList";
	}
	
	@RequestMapping("deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		
		boardService.deleteBoard(vo);
		/*
		 * SQL
		 * DELETE FROM board
		 *  WHERE boardId = #{boardId}
		 */
		return "redirect:/getBoardList";
	}
	
	@RequestMapping("deleteBComment.do")
	public String deleteBComment(BCommentVO vo) {
		
		boardService.deleteBComment(vo);
		/*
		 * SQL
		 * DELETE FROM bComment
		 *  WHERE bCommentId = #{bCommentId}
		 */
		return "redirect:/getBoardList";
	}
	
}
