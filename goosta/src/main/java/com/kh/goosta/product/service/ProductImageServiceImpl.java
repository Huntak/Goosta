package com.kh.goosta.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.product.dao.ProductImageDao;
import com.kh.goosta.product.vo.ProductImageVO;

@Service("productImageService")
public class ProductImageServiceImpl implements ProductImageService {
	
	@Autowired
	private ProductImageDao pid;
	
	public ProductImageServiceImpl(){}

	@Override
	public ProductImageVO selectProductImage(String productname) {
		return pid.selectProductImage(productname);
	}

	@Override
	public List<String> selectProductsMainImages(String productname) {
		return pid.selectProductsMainImages(productname);
	}

	@Override
	public String selectProductsMainImage(int productid) {
		return pid.selectProductsMainImage(productid);
	}

}
