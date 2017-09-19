package com.kh.goosta.manager.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.manager.dao.ManagerDao;
import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;
import com.kh.goosta.product.vo.ProductVO;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private ManagerDao mand;
	
	@Override
	public List<Member> memberlistmanager() {
		System.out.println("서비스impl");
		List<Member> list = mand.memberlistmanager();
		return list;
	}

	@Override
	public List<Member> membersearchManager(HashMap<String, Object> map) {
		
		return mand.membersearchManager(map);
	}

	@Override
	public int updatemembermanager(Member m) {
		
		return mand.updatemembermanager(m);
	}

	@Override
	public int delmembermanager(Member m) {
		return mand.delmembermanager(m);
	}

	@Override
	public ProductVO selectp(ProductVO p) {
		// TODO Auto-generated method stub
		return mand.selectp(p);
	}
	
	@Override
	public Member selectm(Member m) {
		m = mand.selectm(m);
		return m;
	}
	
	@Override
	public List<OrderAndPayVo> selectlistorderManager() {
		// TODO Auto-generated method stub
		return mand.selectlistorderManager();
	}

	@Override
	public List<OrderAndPayVo> ordersearchlistmanager(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mand.ordersearchlistmanager(map);
	}

	@Override
	public OrderAndPayVo selecto(OrderAndPayVo or) {
		// TODO Auto-generated method stub
		return mand.selecto(or);
	}

	@Override
	public int orderlistorderupdate(OrderAndPayVo or) {
		// TODO Auto-generated method stub
		return mand.orderlistorderupdate(or);
	}

	@Override
	public int orderlistorderdel(OrderAndPayVo or) {
		// TODO Auto-generated method stub
		return mand.orderlistorderdel(or);
	}
}
