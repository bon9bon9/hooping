package com.hoo.ping.dao;

import java.util.List;

import com.hoo.ping.domain.MyPageVO;

public interface MyPageDAO {

	MyPageVO getmember(MyPageVO vo);

	List<MyPageVO> payList();

	List<MyPageVO> reviewList();

	MyPageVO getPay(MyPageVO vo);

	MyPageVO getprofile(MyPageVO vo);

}
