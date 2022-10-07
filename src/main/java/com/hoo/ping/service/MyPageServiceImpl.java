package com.hoo.ping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hoo.ping.dao.MyPageDAO;
import com.hoo.ping.domain.MyPageVO;

@Service("myPaService")
public class MyPageServiceImpl implements MyPageService{

	@Autowired
	private MyPageDAO myPageDAO;

	@Override
	public MyPageVO getmember(MyPageVO vo) {
		return myPageDAO.getmember(vo);
		
	}
	@Override
	public List<MyPageVO> payList() {
		// TODO Auto-generated method stub
		return myPageDAO.payList();
	}
	@Override
	public List<MyPageVO> reviewList() {
		// TODO Auto-generated method stub
		return myPageDAO.reviewList();
	}
	@Override
	public MyPageVO getPay(MyPageVO vo) {
		// TODO Auto-generated method stub
		return myPageDAO.getPay(vo);
	}
	@Override
	public MyPageVO getprofile(MyPageVO vo) {
		// TODO Auto-generated method stub
		return myPageDAO.getprofile(vo);
	}
	
}
