package com.kh.goosta.manager.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;
import com.kh.goosta.product.vo.ProductVO;

public interface ManagerService {
	List<Member> memberlistmanager();


	List<Member> membersearchManager(HashMap<String, Object> map);

	int updatemembermanager(Member m);

	int delmembermanager(Member m);

	ProductVO selectp(ProductVO p);
	
	Member selectm(Member m);
	
	List<OrderAndPayVo> ordersearchlistmanager(HashMap<String, Object> map);

	OrderAndPayVo selecto(OrderAndPayVo or);


	List<OrderAndPayVo> selectlistorderManager();


	int orderlistorderupdate(OrderAndPayVo or);


	int orderlistorderdel(OrderAndPayVo or);
}
