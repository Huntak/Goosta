package com.kh.goosta.orderandpay.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;
import com.kh.goosta.product.vo.ProductVO;

@Repository(value="OrderAndPayDao") //service에서 dao를 연결
public class OrderAndPayDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//vo를 연결
	public OrderAndPayVo selectOrderAndPayVo(String oapv) {
		/*sqlSession.selec*/
		return null;
	}

	public void insertoap(OrderAndPayVo oap) {
		sqlSession.insert("orderandpay.insertoap", oap);
		//sqlSession.selectList//다중행
		//sqlSession.selectOne//단일행
	/*	sqlSession.selectOne("orderandpay.selecdfasdfdasfasdfdst", id);
		select * from member where id = #{id}*/
	}

	public ProductVO selectOnePro(HashMap map) {
			ProductVO p = (ProductVO)sqlSession.selectOne("productMapper.selectOnePro",map);
		return p;
	}

	public OrderAndPayVo selectorder(OrderAndPayVo oap) {
		// TODO Auto-generated method stub
		return (OrderAndPayVo)sqlSession.selectOne("orderandpay.selectorder",oap);
	}

	public Object updatemembermile(HashMap map) {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.update("orderandpay.updatemembermile",map);
	}

	public Member selectm(String memberid) {
		// TODO Auto-generated method stub
		return (Member)sqlSession.selectOne("orderandpay.selectm",memberid);
	}
	
	
	

}
