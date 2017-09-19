package com.kh.goosta.reply.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goosta.reply.vo.ReplyVo;

public interface ShandReplyService {

	List<ReplyVo> insertShandReply(HashMap map);

	List<ReplyVo> selectAllShandReply(int boardno);

	List<ReplyVo> insertShandReReply(HashMap map);
	

}
