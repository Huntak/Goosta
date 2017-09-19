package com.kh.goosta.product.service;

import java.util.List;

import com.kh.goosta.product.vo.ProductVO;

public interface ProductService {

	public String selectCategory(String productname);
	
	/*public String selectProductColor(String productnameShort);*/

	public List<ProductVO> selectProductSize(String productname);

	public List<ProductVO> selectProductList(String productMainImage);

	public int selectProductQuantity(String productname, int productsize);

	public ProductVO selectProduct(int productid);
	
}
