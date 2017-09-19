package com.kh.goosta.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.board.vo.NoticeVO;
import com.kh.goosta.board.vo.ReportVO;

@Repository("noDao")
public class NoticeDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<NoticeVO> selectList(int start, int end, String search_option, String search) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("search_option", search_option);
		map.put("search", search);
		List<NoticeVO> list = (List<NoticeVO>) sqlSession.selectList("notice.selectList",map);
		return list;
	}

	public int noticeCount(String search_option, String search) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("search_option", search_option);
		map.put("search", search);
		int count = (Integer) sqlSession.selectOne("notice.noticeCount",map);
		return count;
	}

	public int insertNotice(NoticeVO vo) {
		int result = (Integer) sqlSession.insert("notice.insertNotice",vo);
		return result;
	}

	public void countUp(int boardno) {
		sqlSession.update("notice.countUp",boardno);
	}

	public NoticeVO selectOne(int boardno) {
		NoticeVO vo = (NoticeVO) sqlSession.selectOne("notice.selectOne",boardno);
		return vo;
	}

	public NoticeVO noticeModifyView(int boardno) {
		NoticeVO vo = (NoticeVO) sqlSession.selectOne("notice.noticeModifyView",boardno);
		return vo;
	}

	public void noticeModify(NoticeVO vo) {
		sqlSession.update("notice.noticeModify",vo);
	}

	public void noticeDelete(String boardstatus, int boardno) {
		Map<Object,Object> map = new HashMap<Object,Object>();
		map.put("boardstatus", boardstatus);
		map.put("boardno", boardno);
		sqlSession.update("notice.noticeDelete",map);
		
	}

}
