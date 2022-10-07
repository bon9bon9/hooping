package com.hoo.ping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoo.ping.domain.RCommentVO;
import com.hoo.ping.domain.ReviewVO;
import com.hoo.ping.service.ReviewService;

@Controller
@RequestMapping("/review/")
public class ReviewController {

	private ReviewService reviewService;
	
	@Autowired
	public ReviewController(ReviewService reviewService) {
		this.reviewService = reviewService;
	}
	
	// 특정 리뷰를 표시
	@RequestMapping("getReview")
	public String getReview(ReviewVO vo, Model model) {
		
		vo = reviewService.getReview(vo);
		/*
		 * SQL
		 * SELECT *
		 *   FROM review
		 *  WHERE reviewId = #{reviewId}
		 * 
		 */
		model.addAttribute("review", vo);
		
		List <RCommentVO> rCList = reviewService.getRCommentList(vo);
		/*
		 * SQL
		 * SELECT *
		 * 	 FROM rComment
		 *  WHERE reviewId = #{reviewId}
		 *  ORDER BY rCommentId
		 */
		model.addAttribute("rCList", rCList);
		
		return "review";
	}
	
	
	// 리뷰를 DB에 저장
	@RequestMapping("saveReview.do")
	public String saveReview() { // 파라미터 ReviewVO vo, Model model

		/*
		 * 마이 페이지에서 productId, orderId를 리뷰 작성 페이지로 넘긴 후 파라미터를 넘길 때 hidden으로 함깨 넘긴다
		 */

//		reviewService.insertReview(vo);

		/*
		 * SQL문 INSERT INTO review ( REVIEWID, REVIEWTOTAL, REVIEWQUALITY, 
		 * 							REVIEWTITLE, REVIEWTEXT, REVIEWDATE
		 * <if test="REVIEWHEIGHT != null">,REVIEWHEIGHT</if> <if
		 * test="REVIEWWEIGHT != null">,REVIEWWEIGHT</if> <if
		 * test="REVIEWIMG != null">,REVIEWIMG</if> , REVIEWTHUMBS, REVIEWBESTYN,
		 * ORDERID, PRODUCTID)
		 * 
		 * VALUES ( review_seq.nextval, #{reviewTotal}, #{reviewQuality}, 
		 * 			#{reviewTitle}, #{reviewText}, SYSDATE
		 * <if test="REVIEWHEIGHT != null">,#{reviewHeight}</if>
		 * <if test="REVIEWWEIGHT != null">,#{reviewWeight}</if>
		 * <if test="REVIEWIMG != null">,#{reviewImg}</if>
		 *  , 0, N, #{orderId}, #{productId})
		 * 
		 * model.addAttribute("productNum", vo.getProductId);
		 */

		return "member/myPage";
	}
	
	// 리뷰 댓글을 저장
	@RequestMapping("saveRComment.do")
	public String saveRComment(RCommentVO vo) {
		
		reviewService.insertRComment(vo);
		/*
		 * SQL
		 * INSERT INTO rComment 
		 * (rCommentId, memberId, rCommentUser, rCommentDate, rCommentContents, reviewId )
		 * VALUES
		 * (#{rCommentId}, #{memberId}, #{rCommentUser}, 
		 * #{rCommentDate}, #{rCommentContents}, #{reviewId})
		 */
		
		return "review";
	}

	@RequestMapping("reviewList.do")
	public String reviewList(Model model) {

		System.out.println("=== reviewList ===");
//		ReviewVO vo = reviewService.getBestReview();
//		/*
//		 * 좋아요 수가 가장 많은 리뷰 선택
//		 * 
//		 * SQL 
//		 * SELECT * 
//		 * 	 FROM review
//		 *  WHERE reviewThumbs = (SELECT MAX(reviewThumbs) 
//		 *  						FROM review
//		 * 
//		 */
//
//		// 베스트 리뷰의 좋아요 개수가 10개보다 많다면
//		if (vo.getReviewThumbs() >= 10) {
//
//			// 해당 리뷰의 베스트 리뷰 선정 여부를 확인
//			// 베스트 리뷰에 선정된 적이 없다면
//			if (vo.getReviewBestYN() == 0) {
//				// 멤버 등급 포인트 올리는 메소드
//				// memberService.updateRating(vo);
//				// 베스트 리뷰 체크 메소드
//				reviewService.updateBestYN(vo);
//				/*
//				 * SQL 
//				 * UPDATE review 
//				 * 	  SET reviewBestYN = 1 
//				 *  WHERE reviewId = #{reviewId}
//				 * 
//				 */
//			} //
//			model.addAttribute("bestReview", vo);
//			
//			// 베스트 리뷰를 제외한 리뷰 리스트
//			List<ReviewVO> rList = reviewService.getReviewListWithBest(vo);
//			/*
//			 * SQL
//			 * SELECT * 
//			 * 	 FROM review
//			 *  WHERE NOT(reviewId = #{reviewId})
//			 */
//		} 
//		
//		List<ReviewVO> rList = reviewService.getReviewList();
//
//		// 리뷰 리스트를 추가
//
//		/*
//		 * SQL 
//		 * SELECT * 
//		 * 	 FROM review 
//		 *  ORDER BY reviewThumbs DESC
//		 */
//
//		// 모델에 리뷰 리스트를 추가
//
//		model.addAttribute("rList", rList);

		return "/review/review";
	}

}
