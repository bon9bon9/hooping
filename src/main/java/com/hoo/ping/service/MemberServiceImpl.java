package com.hoo.ping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hoo.ping.dao.MemberDAO;
import com.hoo.ping.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public void saveMember(MemberVO vo) {
		memberDAO.saveMember(vo);
	}

}
