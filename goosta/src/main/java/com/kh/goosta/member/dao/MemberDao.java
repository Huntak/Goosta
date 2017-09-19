package com.kh.goosta.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.product.vo.ProductVO;

@Repository(value="MemberDao")
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public int insertMember(Member m) {
		int result = 0;
		result = (int)mybatis.insert("member.insertmember", m);
		return result;
	}

	public int idcheck(String memberid) {
		int count = 0;
		System.out.println(memberid);
		count = (Integer)mybatis.selectOne("member.idcheck", memberid);
		System.out.println(count);
		return count;
	}

	public Member login2(Member m) {
		m = (Member) mybatis.selectOne("member.login", m);
		return m;
	}

	public Member findid(Member m) {
		m = (Member) mybatis.selectOne("member.findid", m);
		return m;
	}

	public int emailcheck(String email) {
			int result = (Integer) mybatis.selectOne("member.emailcheck", email);
		return result;
	}

	public int findidcheck(Member m) {
			int result = (Integer) mybatis.selectOne("member.findidcheck", m);
		return result;
	}

	public int findpwdcheck(Member m) {
			int result = (Integer) mybatis.selectOne("member.findpwdcheck", m );
		return result;
	}

	public int udpateauthNum(Map<String, String> map) {
		int result = (Integer) mybatis.update("member.updateauthNum",map);
		return result;
	}

	public Member selectm(Member m) {
		m = (Member) mybatis.selectOne("member.selectm", m);
		return m;
	}

}
