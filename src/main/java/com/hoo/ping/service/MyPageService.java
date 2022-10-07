package com.hoo.ping.service;

import java.util.List;

import com.hoo.ping.domain.MyPageVO;

public interface MyPageService {

	MyPageVO getmember(MyPageVO vo);

	List<MyPageVO> payList();

	List<MyPageVO> reviewList();

	MyPageVO getPay(MyPageVO vo);

	MyPageVO getprofile(MyPageVO vo);
}
