package com.kh.goosta.orderandpay.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.dao.OrderAndPayDao;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;
import com.kh.goosta.product.vo.ProductVO;

@Service("OrderAndPayService")
public class OrderAndPayServiceImpl implements OrderAndPayService {
	
	@Resource(name="OrderAndPayDao")
	private OrderAndPayDao oapd;
	
	public OrderAndPayServiceImpl(){}

	@Override
	public void insertoap(OrderAndPayVo oap) {
		oapd.insertoap(oap);
		
	}

	@Override
	public ProductVO selectOnePro(HashMap map) {
		ProductVO p = oapd.selectOnePro(map);
		return p;
	}

	@Override
	public OrderAndPayVo selectorder(OrderAndPayVo oap) {
		
		return oapd.selectorder(oap);
	}


	@Override
	public Member selectm(String memberid) {
		// TODO Auto-generated method stub
		return oapd.selectm(memberid);
	}

	@Override
	public void updatemembermile(HashMap map) {
		oapd.updatemembermile(map);
		
	}
	
	
}
