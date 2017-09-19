package com.kh.goosta.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.vo.FreeBoard;

public interface FreeBoardService {

	int insertfBoard(FreeBoard vo);

	FreeBoard fselectOne(int boardno);

	void countUp(int boardno);

	List<FreeBoard> selectList(int start, int end, String search_option, String search);

	int fboardCount(String search_option, String search);

	void boardDelete(int boardno);

	FreeBoard fselectOne(FreeBoard vo);

}
