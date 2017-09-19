package com.kh.goosta.search.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.product.vo.ProductVO;
@Repository("sDao")
public class SearchDao {

	public SearchDao(){}
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<ProductVO> HeaderSearchView(String searchtext) {
		return (List <ProductVO>) sqlSession.selectList("search.headerSearchView", searchtext);
	}

	public List<ProductVO> TextSearchView(String text) {
		return (List <ProductVO>) sqlSession.selectList("search.textSearchView", text);
	}

	public List<ProductVO> SortByLowPrice(HashMap<String, String> map) {
		return (List <ProductVO>) sqlSession.selectList("search.sortByLowPrice", map);
	}

	public List<ProductVO> SortByHighPrice(HashMap<String, String> map) {
		return (List <ProductVO>) sqlSession.selectList("search.sortByHighPrice", map);
	}

	public List<ProductVO> DetailSearch(HashMap<String, String> map) {
		return (List <ProductVO>) sqlSession.selectList("search.detailSearch", map);
	}

	public List<ProductVO> SortByBestProduct(HashMap<String, String> map) {
		return (List <ProductVO>) sqlSession.selectList("search.sortByBestProduct", map);
	}

	public List<ProductVO> SortByNewProduct(HashMap<String, String> map) {
		return (List <ProductVO>) sqlSession.selectList("search.sortByNewProduct", map);

	}

	public List<ProductVO> previousProductList(HashMap map) {
		return (List <ProductVO>) sqlSession.selectList("search.previousProductList", map);
	}
}
