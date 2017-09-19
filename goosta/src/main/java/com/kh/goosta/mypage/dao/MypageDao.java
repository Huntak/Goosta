package com.kh.goosta.mypage.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;

@Repository
public class MypageDao {
	@Autowired
	private SqlSession sqlSession;
	
public int selectCountfirst(String memberid) {
		
		return (Integer)sqlSession.selectOne("mypage.selectCountfirst", memberid);
	}

	public int selectCountsecond(String memberid) {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.selectOne("mypage.selectCountsecond", memberid);
	}
	public int selectCountthird(String memberid) {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.selectOne("mypage.selectCountthird", memberid);
	}

	@SuppressWarnings("unchecked")
	public List<OrderAndPayVo> selectOrderlist(String memberid) {
		// TODO Auto-generated method stub
		System.out.println("마이페이지 주문내역 멤버아디 : " +memberid);
		return (List<OrderAndPayVo>)sqlSession.selectList("mypage.selectOrderlist",memberid);
	}

	public int selectCount1(String memberid) {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.selectOne("mypage.selectCount1", memberid);
	}

	public int selectCount2(String memberid) {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.selectOne("mypage.selectCount2", memberid);
	}

	public int selectCount3(String memberid) {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.selectOne("mypage.selectCount3", memberid);
	}

	public int selectCount4(String memberid) {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.selectOne("mypage.selectCount4", memberid);
	}

	public int selectCount5(String memberid) {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.selectOne("mypage.selectCount5", memberid);
	}

	

	public List<OrderAndPayVo> selectSearchorderlist(HashMap map) {
		// TODO Auto-generated method stub
		return (List<OrderAndPayVo>)sqlSession.selectList("mypage.selectSearchList",map);
	}
	
	public int updateenroll(Member m) {
		System.out.println(m);
		int result = (Integer) sqlSession.update("mypage.updateenroll", m);
		return result;
	}

	public Member selectm(Member m) {
		m = (Member) sqlSession.selectOne("mypage.selectm3", m);
		return m;
	}

	public int deletemember(Member m) {
		int result = (Integer) sqlSession.update("mypage.deletemember",m);
		return result;
	}

}
