package com.kh.goosta.manager.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;
import com.kh.goosta.product.vo.ProductVO;

@Repository
public class ManagerDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@SuppressWarnings("unchecked")
	public List<Member> memberlistmanager() {
		System.out.println("여기오냐?");
		
		
		return (List<Member>) mybatis.selectList("manager.memberlistmanager");
	}

	@SuppressWarnings("unchecked")
	public List<Member> membersearchManager(HashMap<String, Object> map) {
		
		return (List<Member>) mybatis.selectList("manager.membersearchManager",map);
	}

	public int updatemembermanager(Member m) {
		// TODO Auto-generated method stub
		return (Integer)mybatis.update("manager.updatemembermanager",m);
	}

	public int delmembermanager(Member m) {
		// TODO Auto-generated method stub
		return (Integer)mybatis.update("manager.delmembermanager",m);
	}

	public ProductVO selectp(ProductVO p) {
		// TODO Auto-generated method stub
		return (ProductVO)mybatis.selectOne("manager.selectp",p);
	}
	
	public Member selectm(Member m) {
		m = (Member) mybatis.selectOne("manager.selectm2", m);
		return m;
	}
	
	public List<OrderAndPayVo> selectlistorderManager() {
		// TODO Auto-generated method stub
		return (List<OrderAndPayVo>)mybatis.selectList("manager.selectlistorderManager");
	}

	public List<OrderAndPayVo> ordersearchlistmanager(HashMap<String, Object> map) {
		
		return (List<OrderAndPayVo>)mybatis.selectList("manager.ordersearchlistmanager", map);
	}

	public OrderAndPayVo selecto(OrderAndPayVo or) {
		// TODO Auto-generated method stub
		return (OrderAndPayVo)mybatis.selectOne("manager.selecto",or);
	}

	public int orderlistorderupdate(OrderAndPayVo or) {
		// TODO Auto-generated method stub
		return (Integer)mybatis.update("manager.orderlistorderupdate", or);
	}

	public int orderlistorderdel(OrderAndPayVo or) {
		// TODO Auto-generated method stub
		return (Integer)mybatis.delete("manager.orderlistorderdel",or);
	}

}
