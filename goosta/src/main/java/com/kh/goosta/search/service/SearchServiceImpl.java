package com.kh.goosta.search.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.creview.dao.CreviewDao;
import com.kh.goosta.product.vo.ProductVO;
import com.kh.goosta.search.dao.SearchDao;

@Service("sSvs")
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	private SearchDao sDao;
	
	@Override
	public List<ProductVO> HeaderSearchView(String searchtext) {
		return sDao.HeaderSearchView(searchtext);
	}

	@Override
	public List<ProductVO> TextSearchView(String text) {
		return sDao.TextSearchView(text);
	}

	@Override
	public List<ProductVO> SortByLowPrice(HashMap<String, String> map) {
		return sDao.SortByLowPrice(map);
	}

	@Override
	public List<ProductVO> SortByHighPrice(HashMap<String, String> map) {
		return sDao.SortByHighPrice(map);
	}

	@Override
	public List<ProductVO> DetailSearch(HashMap<String, String> map) {
		return sDao.DetailSearch(map);
	}

	@Override
	public List<ProductVO> SortByBestProduct(HashMap<String, String> map) {
		return sDao.SortByBestProduct(map);
	}

	@Override
	public List<ProductVO> SortByNewProduct(HashMap<String, String> map) {
		return sDao.SortByNewProduct(map);
	}

	@Override
	public List<ProductVO> previousProductList(HashMap map) {
		return sDao.previousProductList(map);
	}


}
