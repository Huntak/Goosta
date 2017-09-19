package com.kh.goosta.mypage.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;

public interface MypageService {
	int selectCountfirst(String memberid);

	int selectCountsecond(String memberid);

	int selectCountthird(String memberid);

	List<OrderAndPayVo> selectOrderlist(String memberid);

	int selectCount1(String memberid);

	int selectCount2(String memberid);

	int selectCount3(String memberid);

	int selectCount4(String memberid);

	int selectCount5(String memberid);

	List<OrderAndPayVo> selectSearchOrderlist(HashMap map);
	
	int updateenroll(Member m);	

	int deletemember(Member m);
	
	Member selectm(Member m);
}
