package com.kh.goosta.product.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.product.vo.ProductVO;

@Repository("productDao")
public class ProductDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public String selectCategory(String productname) {
		return (String) sqlSession.selectOne("productMapper.selectCategory", productname);
	}

	/*public String selectProductColor(String productnameShort) {
		return (String) sqlSession.selectOne("productMapper.selectProductColor", productnameShort);
	}*/

	@SuppressWarnings("unchecked")
	public List<ProductVO> selectProductSize(String productname) {
		return (List<ProductVO>) sqlSession.selectList("productMapper.selectProductSize", productname);
	}

	@SuppressWarnings("unchecked")
	public List<ProductVO> selectProductList(String productMainImage) {
		return (List<ProductVO>) sqlSession.selectList("productMapper.selectProductList", productMainImage);
	}

	public int selectProductQuantity(String productname, int productsize) {
		int i = 0;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productname", productname);
		map.put("productsize", productsize);
		Object obj = sqlSession.selectOne("productMapper.selectProductQuantity", map);
		if(obj != null)
			i = (Integer) obj;
		return i;
	}

	public ProductVO selectProduct(int productid) {
		return (ProductVO) sqlSession.selectOne("productMapper.selectProduct", productid);
	}

}
