package com.kh.goosta.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.vo.FreeBoard;

@Repository("freeboardDao")
public class FreeBoardDAO extends FreeBoard {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertfBoard(FreeBoard vo) {
		System.out.println("dao insert" + vo);
		int result = (Integer) sqlSession.insert("fboard.insertfboard", vo);
		return result;
	}

	public FreeBoard fselectOne(int boardno) {
		FreeBoard vo = (FreeBoard) sqlSession.selectOne("fboard.fselectOne", boardno);
		return vo;
	}

	public void countUp(int boardno) {
		sqlSession.update("fboard.fcountUp", boardno);
	}

	@SuppressWarnings("unchecked")
	public List<FreeBoard> selectList(int start, int end, String search_option, String search) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("search_option", search_option);
		map.put("search", search);
		List<FreeBoard> list = (List<FreeBoard>) sqlSession.selectList("fboard.selectListfreeboard", map);
		System.out.println("dao" + list);
		return list;
	}

	public int fboardCount(String search_option, String search) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("search_option", search_option);
		map.put("search", search);
		int count = (Integer) sqlSession.selectOne("fboard.fboardCount", map);
		return count;
	}

	public FreeBoard fselectOne(FreeBoard vo) {
		vo = (FreeBoard) sqlSession.selectOne("fboard.selectfree", vo);
		return vo;
	}

}
