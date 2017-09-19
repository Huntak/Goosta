package com.kh.goosta.product.service;

import java.util.List;

import com.kh.goosta.product.vo.ProductVO;

public interface CategoryService {

	List<ProductVO> selectList(String categorybrand, String categorysort, String order, int start, int end, String orderColumn);

	int categoryCount(String categorybrand, String categorysort);

	

}
