package com.kh.goosta.product.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.product.vo.ProductVO;

@Repository("caDao")
public class CategoryDao {
	
	@Autowired
	private SqlSession sqlSession;

	@SuppressWarnings("unchecked")
	public List<ProductVO> selectList(String categorybrand, String categorysort, String order, int start, int end, String orderColumn) {
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("categorybrand", categorybrand);
		map.put("categorysort", categorysort);
		map.put("order", order);
		map.put("start", start);
		map.put("end", end);
		map.put("orderColumn", orderColumn);
		if(orderColumn.equals("best")){
			List<ProductVO> list = sqlSession.selectList("category.bestSelect",map);
			return list;
		}else{
			List<ProductVO> list = sqlSession.selectList("category.selectList",map);
			return list;
		}
		
	}

	public int categoryCount(String categorybrand, String categorysort) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("categorybrand", categorybrand);
		map.put("categorysort", categorysort);
		int count = (Integer) sqlSession.selectOne("category.categoryCount",map);
		return count;
	}
	

}
