package com.hoo.ping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoo.ping.domain.MyPageVO;
import com.hoo.ping.service.MyPageService;

@Controller
@RequestMapping("/myPage/")
public class MyPageController {

	@Autowired
	private MyPageService myPageService;	
	
	@RequestMapping("myPage.do")
	public String myPage(MyPageVO vo, Model model) {
		System.out.println("-----------mypage 진입--------------");
//		model.addAttribute("getmember", myPageService.getmember(vo));
//		/* 
//		 * SELECT * FROM member
//		 */
//		model.addAttribute("paylist", myPageService.payList());
//		/* 
//		 * SELECT * FROM pay ORDER BY payDate
//		 */
//		model.addAttribute("reviewlist", myPageService.reviewList());
//		/* 
//		 * SELECT * FROM review
//		 */
		return "/member/myPage";
	}
	
	@RequestMapping("writeReview.do")
	public String getpay(MyPageVO vo, Model model) {
//		model.addAttribute("getPay", myPageService.getPay(vo));
		/* 
		 * SELECT * FROM pay
		 */
		
		return "/review/writeReview";
	}
	@RequestMapping("profile.do")
	public String getprofile(MyPageVO vo, Model model) {
		System.out.println("=== profile.do ===");
//		model.addAttribute("getprofile", myPageService.getprofile(vo));
		/* 
		 * SELECT * FROM member
		 */
		return "/member/profile";
		
	}
}
