package com.kh.goosta.shoppingcart.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.product.vo.ProductVO;
import com.kh.goosta.shoppingcart.dao.ShoppingCartDao;
import com.kh.goosta.shoppingcart.vo.ShoppingCartVo;

@Service("ShoppingCartService")
public class ShoppingCartServiceImpl implements ShoppingCartService{

	@Resource(name="ShoppingCartDao")
	private ShoppingCartDao scd;
	
	public ShoppingCartServiceImpl(){}
	
	@Override
	public int insertShoppingCartVo(ShoppingCartVo scv){
		return scd.insertShoppingCartVo(scv);
	}

	@Override
	public List<ShoppingCartVo> selectShoppingCart(Member loginUser) {
		
		return scd.selectShoppingCart(loginUser);
	}

	@Override
	public ProductVO selectProductVO(ShoppingCartVo shoppingCartVo) {
		
		return scd.selectProductVO(shoppingCartVo);
	}

	@Override
	public String selectmainimage(ProductVO pro) {
		
		return scd.selectmainimage(pro);
	}

	@Override
	public int cartdel(ShoppingCartVo scv) {
		// TODO Auto-generated method stub
		return scd.cartdel(scv);
	}
	
	/*@Override
	public ShoppingCartVo selectCart(ShoppingCartVo scv){
		scv = scd.selectShoppingCartVo(scv);
		return null;
	}*/
}
