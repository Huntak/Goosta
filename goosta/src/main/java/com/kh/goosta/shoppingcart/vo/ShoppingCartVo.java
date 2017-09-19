package com.kh.goosta.shoppingcart.vo;

import java.util.HashMap;

import com.kh.goosta.product.vo.ProductVO;

public class ShoppingCartVo {

	private int cartid;
	private String memberid;
	private int productid;
	private int cartquantity;
	
	public ShoppingCartVo(){}
	

	public ShoppingCartVo(int cartid, String memberid, int productid, int cartquantity) {
		super();
		this.cartid = cartid;
		this.memberid = memberid;
		this.productid = productid;
		this.cartquantity = cartquantity;
	}



	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public int getCartquantity() {
		return cartquantity;
	}

	public void setCartquantity(int cartquantity) {
		this.cartquantity = cartquantity;
	}


	@Override
	public String toString() {
		return "ShoppingCartVo [cartid=" + cartid + ", memberid=" + memberid + ", productid=" + productid
				+ ", cartquantity=" + cartquantity + "]";
	}
}