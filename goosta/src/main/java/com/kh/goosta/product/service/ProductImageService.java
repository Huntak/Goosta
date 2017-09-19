package com.kh.goosta.product.service;

import java.util.List;

import com.kh.goosta.product.vo.ProductImageVO;

public interface ProductImageService {

	public ProductImageVO selectProductImage(String productname) ;

	public List<String> selectProductsMainImages(String productname);

	String selectProductsMainImage(int productid);

}
