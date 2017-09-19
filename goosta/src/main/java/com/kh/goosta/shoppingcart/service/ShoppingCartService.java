package com.kh.goosta.shoppingcart.service;

import java.util.List;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.product.vo.ProductVO;
import com.kh.goosta.shoppingcart.vo.ShoppingCartVo;

public interface ShoppingCartService {

	int insertShoppingCartVo(ShoppingCartVo scv);

	/*ShoppingCartVo selectCart(ShoppingCartVo scv);*/

	List<ShoppingCartVo> selectShoppingCart(Member loginUser);

	ProductVO selectProductVO(ShoppingCartVo shoppingCartVo);

	String selectmainimage(ProductVO pro);

	int cartdel(ShoppingCartVo scv);

}
