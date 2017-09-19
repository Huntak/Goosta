package com.kh.goosta.board.service;

import java.util.List;

import com.kh.goosta.board.vo.NoticeVO;
import com.kh.goosta.board.vo.ReportVO;

public interface NoticeService {

	List<NoticeVO> selelctList(int start, int end, String search_option, String search);

	int noticeCount(String search_option, String search);

	int insertNotice(NoticeVO vo);

	void countUp(int boardno);

	NoticeVO selectOne(int boardno);

	NoticeVO noticeModifyView(int boardno);

	void noticeModify(NoticeVO vo);

	void noticeDelete(String boardstatus, int boardno);

}
