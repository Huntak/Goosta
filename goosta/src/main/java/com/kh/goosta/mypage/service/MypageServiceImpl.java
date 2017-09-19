package com.kh.goosta.mypage.service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.mypage.dao.MypageDao;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;


@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	private MypageDao myd;
	
	@Override
	public int selectCountfirst(String memberid) {
		
		return myd.selectCountfirst(memberid);
	}

	@Override
	public int selectCountsecond(String memberid) {
		// TODO Auto-generated method stub
		return myd.selectCountsecond(memberid);
	}

	@Override
	public int selectCountthird(String memberid) {
		// TODO Auto-generated method stub
		return myd.selectCountthird(memberid);
	}

	@Override
	public List<OrderAndPayVo> selectOrderlist(String memberid) {
		return myd.selectOrderlist(memberid);
	}

	@Override
	public int selectCount1(String memberid) {
		// TODO Auto-generated method stub
		return myd.selectCount1(memberid);
	}

	@Override
	public int selectCount2(String memberid) {
		// TODO Auto-generated method stub
		return myd.selectCount2(memberid);
	}

	@Override
	public int selectCount3(String memberid) {
		// TODO Auto-generated method stub
		return myd.selectCount3(memberid);
	}

	@Override
	public int selectCount4(String memberid) {
		// TODO Auto-generated method stub
		return myd.selectCount4(memberid);
	}

	@Override
	public int selectCount5(String memberid) {
		// TODO Auto-generated method stub
		return myd.selectCount5(memberid);
	}

	@Override
	public List<OrderAndPayVo> selectSearchOrderlist(HashMap map) {
		// TODO Auto-generated method stub
		return myd.selectSearchorderlist(map);
	}
	
	@Override
	public int updateenroll(Member m) {
		int result = myd.updateenroll(m);
		return result;
	}

	@Override
	public Member selectm(Member m) {
		m = myd.selectm(m);
		return m;
	}

	@Override
	public int deletemember(Member m) {
		int result = myd.deletemember(m);
		return result;
	}
	
}
