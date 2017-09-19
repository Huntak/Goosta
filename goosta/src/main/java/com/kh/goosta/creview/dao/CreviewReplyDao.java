package com.kh.goosta.creview.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.board.vo.ReplyVO;

@Repository	//스프링에서 관리하는 dao bean
public class CreviewReplyDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ReplyVO> replyList(int boardno){
		System.out.println("dao : "+boardno);
		return (List<ReplyVO>) sqlSession.selectList("creviewVO.creiviewreplyList",boardno);
	}
	
	public void replyInsert(int boardno, String replywriter, String replycontent){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("boardno", boardno);
		map.put("replywriter", replywriter);
		map.put("replycontent", replycontent);
		sqlSession.insert("creviewVO.creiviewreplyInsert",map);
	}

	public List<ReplyVO> getReplyContent(HashMap map) {
		return (List<ReplyVO>) sqlSession.selectList("creviewVO.getReplyContent",map);
	}

}
