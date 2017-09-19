package com.kh.goosta.orderandpay.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;
import com.kh.goosta.product.vo.ProductVO;

public interface OrderAndPayService {

	void insertoap(OrderAndPayVo oap);

	ProductVO selectOnePro(HashMap map);

	OrderAndPayVo selectorder(OrderAndPayVo oap);

	void updatemembermile(HashMap map);

	Member selectm(String memberid);
	
	


}
