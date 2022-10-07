package com.hoo.ping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoo.ping.domain.MemberVO;
import com.hoo.ping.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
		
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("login.do")
	public String login() {
		
		return "/member/login";
	}
	
	@RequestMapping("idCheck.do")
	public String idCheck() {
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("logout.do")
	public String logout() {
		
		return "/redirect:/main.do";
	}
	
	@RequestMapping("signUp.do")
	public String signUp() {
		
		return "/member/signUp";
	}
	
	@RequestMapping("signDetail.do")
	public String signDetail(MemberVO vo, Model model) {
		System.out.println("===signDetail===");
		model.addAttribute("MemberVO", vo);
		
		return "/member/signDetail";
	}
	
	@RequestMapping("saveMember.do")
	public String saveMember(MemberVO vo) {
		System.out.println("===saveMember===");
		memberService.saveMember(vo);
		
		return "redirect:/main.do";
	}
	
}
