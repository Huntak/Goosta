package com.kh.goosta.creview.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.board.vo.ReplyVO;
import com.kh.goosta.creview.dao.CreviewDao;
import com.kh.goosta.creview.dao.CreviewReplyDao;
import com.kh.goosta.creview.vo.CreviewVO;

@Service
public class CreviewServiceImpl implements CreviewService {
	
	@Autowired
	private CreviewDao cDao;
	@Autowired
	private CreviewReplyDao cRDao;
	
	@Override
	public List showCreviews(Map<String, Object> commandMap) throws Exception {
		return cDao.showCreviews(commandMap);
	}

	/*@Override
	public Object creviewDetail(HashMap map) throws Exception{
		cDao.updateHitCnt(map);
		return cDao.creviewDetail((Map<String, Object>) map);
		}*/

	@Override
	public List<CreviewVO> creviewListView() {
		return cDao.creviewListView();
		}

	@Override
	public CreviewVO creviewDetail(int boardno) {
		return cDao.creviewDetail(boardno);
	}

	@Override
	public void creviewDelete(int boardno) {
		cDao.creviewDelete(boardno);
	}

	@Override
	public void creviewModify(CreviewVO vo) {
		cDao.creviewModify(vo);
	}

	@Override
	public List<CreviewVO> creviewSearch(String searchtext) {
		return cDao.creviewSearch(searchtext);
	}

	@Override
	public List<ReplyVO> replyList(int boardno) {
		System.out.println("serviceimpl : "+boardno);
		List list = cRDao.replyList(boardno);
		System.out.println(list.size());
		return cRDao.replyList(boardno);
	}

	@Override
	public void replyInsert(int boardno, String replywriter, String replycontent) {
		cRDao.replyInsert(boardno, replywriter, replycontent);
		System.out.println(boardno + ","+replywriter+ ","+replycontent);
	}

	@Override
	public int insertCreview(CreviewVO vo) {
	/*	if(vo.getBoardimage1() != null){
			System.out.println("이미지 있어");
			int result3 = cDao.insertFile(vo);
			int result = cDao.insertReportFile(vo);
			int result2 = cDao.insertReport2(vo);
		}else if(vo.getboardimage1() == null){
			System.out.println("이미지 없어");
			int result = reDao.insertReport(vo);
			int result2 = reDao.insertReport2(vo);
		}
		return 0;*/
		return cDao.insertCreview(vo);
	}

	@Override
	public List<ReplyVO> getReplyContent(HashMap map) {
		return (List<ReplyVO>)cRDao.getReplyContent(map);
	}
	
}



	
	
