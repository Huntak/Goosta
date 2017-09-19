package com.kh.goosta.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.vo.ReplyVO;
import com.kh.goosta.board.vo.ReportVO;

public interface ReportService {

	int insertReport(ReportVO vo);

	ReportVO selectOne(int boardno);

	void countUp(int boardno);

	List<ReportVO> selelctList(int start, int end, String search_option, String search);

	int reportCount(String search_option, String search);

	ReportVO reportModifyView(int boardno);

	void reportModify(ReportVO vo);
	
	List<ReplyVO> replyList(int boardno);

	void replyInsert(int boardno, String replywriter, String replycontent);

	void replyModify(int replyno, String replycontent);

	void replyDelete(int replyno);

}
