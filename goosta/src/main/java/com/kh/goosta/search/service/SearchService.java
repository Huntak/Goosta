package com.kh.goosta.search.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kh.goosta.product.vo.ProductVO;

public interface SearchService {

	List<ProductVO> HeaderSearchView(String searchtext);

	List<ProductVO> TextSearchView(String text);

	List<ProductVO> SortByLowPrice(HashMap<String, String> map);

	List<ProductVO> SortByHighPrice(HashMap<String, String> map);

	List<ProductVO> DetailSearch(HashMap<String, String> map);

	List<ProductVO> SortByBestProduct(HashMap<String, String> map);

	List<ProductVO> SortByNewProduct(HashMap<String, String> map);

	List<ProductVO> previousProductList(HashMap map);

}
