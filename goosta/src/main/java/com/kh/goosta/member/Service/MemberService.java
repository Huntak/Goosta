package com.kh.goosta.member.Service;

import java.util.*;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.product.vo.ProductVO;

public interface MemberService {
	
	int enroll2(Member m);
	
	int idcheck(String memberid);

	Member login2(Member m);

	Member findid(Member m);

	int emailcheck(String email);

	int findidcheck(Member m);

	int findpwdcheck(Member m);

	int updateauthNum(Map<String, String> map);
	
	Member selectm(Member m);

	

	
}
