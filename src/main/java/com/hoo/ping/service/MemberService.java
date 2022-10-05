package com.hoo.ping.service;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoo.ping.domain.MemberVO;


public interface MemberService {
	
	void saveMember(MemberVO vo);
	
	
}
