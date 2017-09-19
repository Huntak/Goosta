package com.kh.goosta.creview.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;

import com.kh.goosta.board.vo.ReplyVO;
import com.kh.goosta.creview.vo.CreviewVO;

public interface CreviewService {

	public int insertCreview(CreviewVO vo);

	public List showCreviews(Map<String, Object> commandMap) throws Exception;

//	public Object creviewDetail(HashMap map) throws Exception;

	public List<CreviewVO> creviewListView();

	public CreviewVO creviewDetail(int boardno);

	public void creviewDelete(int boardno);

	public void creviewModify(CreviewVO vo);

	public List<CreviewVO> creviewSearch(String searchtext);

	public List<ReplyVO> replyList(int boardno);

	public void replyInsert(int boardno, String replywriter, String replycontent);

	public List<ReplyVO> getReplyContent(HashMap map);


}
