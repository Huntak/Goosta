package com.kh.goosta.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.board.vo.SReviewVO;


@Repository("sreviewDao")
public class SReviewDao {
	
	@Autowired
	private SqlSession sqlSession;

	public int sreviewCount(String search_option, String search) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("search_option", search_option);
		map.put("search", search);
		int count = (Integer) sqlSession.selectOne("sreviewMapper.sreviewCount",map);
		return count;
	}

	@SuppressWarnings("unchecked")
	public List<SReviewVO> selectList(int start, int end, String search_option, String search) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("search_option", search_option);
		map.put("search", search);
		return (List<SReviewVO>) sqlSession.selectList("sreviewMapper.selectList",map);
	}

	public int insertSReview(SReviewVO vo) {
		return (Integer) sqlSession.insert("sreviewMapper.insertSReview",vo);
	}

	public int insertSReview2(SReviewVO vo) {
		return (Integer) sqlSession.insert("sreviewMapper.insertSReview2",vo);
	}

	public SReviewVO selectOne(int boardno) {
		return (SReviewVO) sqlSession.selectOne("sreviewMapper.selectOne",boardno);
	}

	public void countUp(int boardno) {
		sqlSession.update("sreviewMapper.countUp",boardno);
	}

	public int sreviewModify(SReviewVO vo) {
		return (Integer) sqlSession.update("sreviewMapper.sreviewModify",vo);
	}

	public int sreviewModify2(SReviewVO vo) {
		return (Integer) sqlSession.update("sreviewMapper.sreviewModify2",vo);
	}

	public int sreviewDelete(int boardno) {
		return (Integer) sqlSession.update("sreviewMapper.sreviewDelete",boardno);
	}

	public double selectStarQuantityRate(String productname) {
		double starQuantityRate = 0;
		String starQuantityRateStr = (String) sqlSession.selectOne("sreviewMapper.selectStarQuantityRate", productname);
		if(starQuantityRateStr != null)
			starQuantityRate = Double.parseDouble(starQuantityRateStr);
		return starQuantityRate;
	}

	public double selectReviewSizeRate(String productname) {
		double reviewSizeRate = 0;
		String reviewSizeRateStr = (String) sqlSession.selectOne("sreviewMapper.selectReviewSizeRate", productname);
		if(reviewSizeRateStr != null)
			reviewSizeRate = Double.parseDouble(reviewSizeRateStr);
		return reviewSizeRate;
	}

	public double selectReviewFootRate(String productname) {
		double reviewFootRate = 0;
		String reviewFootRateStr = (String) sqlSession.selectOne("sreviewMapper.selectReviewFootRate", productname);
		if(reviewFootRateStr != null)
			reviewFootRate = Double.parseDouble(reviewFootRateStr);
		return reviewFootRate;
	}

	public double selectReviewColorRate(String productname) {
		double reviewColorRate = 0;
		String reviewColorRateStr = (String) sqlSession.selectOne("sreviewMapper.selectReviewColorRate", productname);
		if(reviewColorRateStr != null)
			reviewColorRate = Double.parseDouble(reviewColorRateStr);
		return reviewColorRate;
	}

	public double selectReviewDeliverRate(String productname) {
		double reviewDeliverRate = 0;
		String reviewDeliverRateStr = (String) sqlSession.selectOne("sreviewMapper.selectReviewDeliverRate", productname);
		if(reviewDeliverRateStr != null)
			reviewDeliverRate = Double.parseDouble(reviewDeliverRateStr);
		return reviewDeliverRate;
	}

	public int sreviewProductCount(String productnameShort) {
		return (Integer) sqlSession.selectOne("sreviewMapper.sreviewProductCount", productnameShort);
	}

	@SuppressWarnings("unchecked")
	public List<SReviewVO> selectmyreviewList(int start, int end, String search_option, String search) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("search_option", search_option);
		map.put("search", search);
		return (List<SReviewVO>) sqlSession.selectList("sreviewMapper.selectmyreviewList",map);
	}
}
