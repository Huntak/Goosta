package com.kh.goosta.product.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.product.vo.ProductImageVO;

@Repository("productImageDao")
public class ProductImageDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ProductImageVO selectProductImage(String productname) {
		return (ProductImageVO) sqlSession.selectOne("productImageMapper.selectProductImage", productname);
	}

	@SuppressWarnings("unchecked")
	public List<String> selectProductsMainImages(String productname) {
		return (List<String>) sqlSession.selectList("productImageMapper.selectProductsMainImages", productname);
	}

	public String selectProductsMainImage(int productid) {
		return (String) sqlSession.selectOne("productImageMapper.selectProductsMainImage", productid);
	}

}
