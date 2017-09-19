package com.kh.goosta.member.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.member.dao.MemberDao;
import com.kh.goosta.member.vo.Member;
import com.kh.goosta.product.vo.ProductVO;

@Service(value="MemberService")
public class MemberServiceImpl implements MemberService {
	
	@Resource(name="MemberDao")
	private MemberDao md;
	
	@Override
	public int enroll2(Member m) {
		int result = 0;
		result = md.insertMember(m);
		return result;
	}

	@Override
	public int idcheck(String memberid) {
		int count = md.idcheck(memberid);
		return count;
	}

	@Override
	public Member login2(Member m) {
		m = md.login2(m);
		return m;
	}

	@Override
	public Member findid(Member m) {
		m = md.findid(m);
		return m;
	}

	@Override
	public int emailcheck(String email) {
		int result = md.emailcheck(email);
		return result;
	}

	@Override
	public int findidcheck(Member m) {
		int result = md.findidcheck(m);
		return result;
	}

	@Override
	public int findpwdcheck(Member m) {
		int result = md.findpwdcheck(m);
		return result;
	}

	@Override
	public int updateauthNum(Map<String, String> map) {
		int result = md.udpateauthNum(map);
		return result;
		
	}

	

	@Override
	public Member selectm(Member m) {
		m = md.selectm(m);
		return m;
	}

	

	

}
