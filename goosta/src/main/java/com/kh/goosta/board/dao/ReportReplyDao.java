package com.kh.goosta.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.goosta.board.vo.ReplyVO;

@Repository	//스프링에서 관리하는 dao bean
public class ReportReplyDao {
	
	@Inject
	SqlSession sqlSession;
	
	public List<ReplyVO> replyList(int boardno){
		
		List<ReplyVO> rpList = sqlSession.selectList("report.replyList",boardno);
		return rpList;
	}
	
	public void replyInsert(int boardno, String replywriter, String replycontent){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("boardno", boardno);
		map.put("replywriter", replywriter);
		map.put("replycontent", replycontent);
		sqlSession.insert("report.replyInsert",map);
	}

	public void replyModify(int replyno, String replycontent) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("replyno", replyno);
		map.put("replycontent", replycontent);
		sqlSession.update("report.replyModify",map);
	}

	public void replyDelete(int replyno) {
		sqlSession.update("report.replyDelete",replyno);
	}

}
