package com.kh.goosta.reply.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.reply.vo.ReplyVo;

@Repository("shandReplyDao")
public class ShandReplyDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<ReplyVo> insertShandReply(HashMap map) {
		sqlSession.insert("shandreply.insertShandReply", map);
		return (List<ReplyVo>) sqlSession.selectList("shandreply.selectAllShandReply", map);
	}

	public List<ReplyVo> selectAllShandReply(int boardno) {
		return (List<ReplyVo>) sqlSession.selectList("shandreply.selectAllShandReply2", boardno);
	}

	public List<ReplyVo> insertShandReReply(HashMap map) {
		sqlSession.insert("shandreply.insertShandReReply", map);
		return (List<ReplyVo>) sqlSession.selectList("shandreply.selectAllShandReply", map);
	}
	

}
