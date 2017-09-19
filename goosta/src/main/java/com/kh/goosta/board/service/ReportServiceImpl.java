package com.kh.goosta.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.dao.ReportDao;
import com.kh.goosta.board.dao.ReportReplyDao;
import com.kh.goosta.board.vo.ReplyVO;
import com.kh.goosta.board.vo.ReportVO;

@Service("repoService")
public class ReportServiceImpl implements ReportService{
	
	@Autowired
	private ReportDao reDao;
	@Autowired
	private ReportReplyDao replyDao;

	@Override
	public int insertReport(ReportVO vo) {
		int result = reDao.insertReport(vo);
		int result2 = reDao.insertReport2(vo);
		return result;
	}

	@Override
	public ReportVO selectOne(int boardno) {
		ReportVO vo = reDao.selectOne(boardno);
		return vo;
	}

	@Override
	public void countUp(int boardno) {
		reDao.countUp(boardno);
		
	}

	@Override
	public List<ReportVO> selelctList(int start, int end,String search_option, String search) {
		List<ReportVO> list = reDao.selectList(start,end,search_option,search);
		return list;
	}

	@Override
	public int reportCount(String search_option, String search) {
		int count = reDao.reportCount(search_option,search);
		return count;
	}

	@Override
	public ReportVO reportModifyView(int boardno) {
		ReportVO vo = reDao.reportModifyView(boardno);
		return vo;
	}

	@Override
	public void reportModify(ReportVO vo) {
		reDao.reportModify(vo);
		reDao.reportModify2(vo);
	}

	@Override
	public List<ReplyVO> replyList(int boardno) {
		return replyDao.replyList(boardno);
	}

	@Override
	public void replyInsert(int boardno, String replywriter, String replycontent) {
		replyDao.replyInsert(boardno,replywriter,replycontent);
	}

	@Override
	public void replyModify(int replyno, String replycontent) {
		replyDao.replyModify(replyno,replycontent);
	}

	@Override
	public void replyDelete(int replyno) {
		replyDao.replyDelete(replyno);
	}

}
