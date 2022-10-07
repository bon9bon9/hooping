package com.hoo.ping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hoo.ping.domain.MyPageVO;

@Repository("myPageDAO")
public class MyPageDAOIpml implements MyPageDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public MyPageVO getmember(MyPageVO vo) {
		return mybatis.selectOne("pay.getmember", vo);
	}

	@Override
	public List<MyPageVO> payList() {
		// TODO Auto-generated method stub
		return mybatis.selectList("pay.payList");
	}

	@Override
	public List<MyPageVO> reviewList() {
		// TODO Auto-generated method stub
		return mybatis.selectList("pay.reviewList");
	}

	@Override
	public MyPageVO getPay(MyPageVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("pay.getPay", vo);
	}

	@Override
	public MyPageVO getprofile(MyPageVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("pay.getprofile", vo);
	}
}
