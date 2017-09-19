package com.kh.goosta.shoppingcart.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.product.vo.ProductVO;
import com.kh.goosta.shoppingcart.vo.ShoppingCartVo;

@Repository(value="ShoppingCartDao")
public class ShoppingCartDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	/*public ShoppingCartVo selectShoppingCartVo(ShoppingCartVo scv){
		sqlSession.selectList("cart",scv);
		return scv;
	}*/
	
	public int insertShoppingCartVo(ShoppingCartVo scv){
		return (Integer)sqlSession.insert("shoppingcart.insertscv",scv);
	}

	public List<ShoppingCartVo> selectShoppingCart(Member loginUser) {
		return sqlSession.selectList("shoppingcart.selectscv", loginUser);
	}

	public ProductVO selectProductVO(ShoppingCartVo shoppingCartVo) {
		
		return (ProductVO)sqlSession.selectOne("shoppingcart.selectproduct", shoppingCartVo);
	}

	public String selectmainimage(ProductVO pro) {
		
		return (String)sqlSession.selectOne("shoppingcart.selectpimage",pro);
	}

	public int cartdel(ShoppingCartVo scv) {
		// TODO Auto-generated method stub
		return (Integer)sqlSession.delete("shoppingcart.cartdel",scv);
	}
	
}
