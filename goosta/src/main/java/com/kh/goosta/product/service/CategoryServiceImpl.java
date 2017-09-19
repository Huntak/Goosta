package com.kh.goosta.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.product.dao.CategoryDao;
import com.kh.goosta.product.vo.ProductVO;

@Service("caService")
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryDao caDao;

	@Override
	public List<ProductVO> selectList(String categorybrand, String categorysort, String order, int start, int end, String orderColumn) {
		List<ProductVO> list = caDao.selectList(categorybrand,categorysort,order,start,end,orderColumn);
		return list;
	}

	@Override
	public int categoryCount(String categorybrand, String categorysort) {
		int count = caDao.categoryCount(categorybrand,categorysort);
		return count;
	}
}
