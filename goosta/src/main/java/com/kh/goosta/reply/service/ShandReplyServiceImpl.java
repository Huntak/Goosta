package com.kh.goosta.reply.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.goosta.reply.dao.ShandReplyDao;
import com.kh.goosta.reply.vo.ReplyVo;

@Service("shandReplyService")
public class ShandReplyServiceImpl implements ShandReplyService{
	
	@Resource(name="shandReplyDao")
	private ShandReplyDao shandReplyDao;

	//댓글 등록
	@Override
	public List<ReplyVo> insertShandReply(HashMap map) {
		return shandReplyDao.insertShandReply(map);
	}

	//댓글 전체 조회
	@Override
	public List<ReplyVo> selectAllShandReply(int boardno) {
		return shandReplyDao.selectAllShandReply(boardno);
	}
	
	//댓글에 댓글 등록
	@Override
	public List<ReplyVo> insertShandReReply(HashMap map) {
		return shandReplyDao.insertShandReReply(map);
	}

}
