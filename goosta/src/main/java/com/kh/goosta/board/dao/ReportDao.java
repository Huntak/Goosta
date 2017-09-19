package com.kh.goosta.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.vo.ReportVO;

@Repository("reDao")
public class ReportDao extends ReportVO{
	
	@Autowired
	private SqlSession sqlSession;

	public int insertReport(ReportVO vo) {
		int result = (Integer) sqlSession.insert("report.insertReport",vo);
		return result;
	}

	public int insertReport2(ReportVO vo) {
		int result = (Integer) sqlSession.insert("report.insertReport2",vo);

		return result;
	}

	public ReportVO selectOne(int boardno) {
		ReportVO vo = (ReportVO) sqlSession.selectOne("report.selectOne",boardno);
		return vo;
	}

	public void countUp(int boardno) {
		sqlSession.update("report.countUp",boardno);
	}

	public List<ReportVO> selectList(int start, int end, String search_option, String search) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("search_option", search_option);
		map.put("search", search);
		List<ReportVO> list = (List<ReportVO>) sqlSession.selectList("report.selectList",map);
		return list;
	}

	public int reportCount(String search_option, String search) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("search_option", search_option);
		map.put("search", search);
		int count = (Integer) sqlSession.selectOne("report.reportCount",map);
		return count;
	}

	public ReportVO reportModifyView(int boardno) {
		ReportVO vo = (ReportVO) sqlSession.selectOne("report.reportModifyView",boardno);
		return vo;
	}

	public void reportModify(ReportVO vo) {
		sqlSession.update("report.reportModify",vo);
	}

	public void reportModify2(ReportVO vo) {
		sqlSession.update("report.reportModify2",vo);
	}

}
