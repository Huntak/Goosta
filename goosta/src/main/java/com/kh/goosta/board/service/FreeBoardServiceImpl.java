package com.kh.goosta.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.dao.FreeBoardDAO;
import com.kh.goosta.board.vo.FreeBoard;

@Service("boardService")
public class FreeBoardServiceImpl implements FreeBoardService{
	
	@Autowired
	private FreeBoardDAO boardDao;

	@Override
	public int insertfBoard(FreeBoard vo) {
		int result = boardDao.insertfBoard(vo);
		return result;
	}

	@Override
	public FreeBoard fselectOne(int boardno) {
		FreeBoard vo = boardDao.fselectOne(boardno);
		return vo;
	}

	@Override
	public void countUp(int boardno) {
		boardDao.countUp(boardno);
		
	}

	@Override
	public List<FreeBoard> selectList(int start, int end,String search_option, String search) {
		List<FreeBoard> list = boardDao.selectList(start,end,search_option,search);
		return list;
	}

	@Override
	public int fboardCount(String search_option, String search) {
		int count = boardDao.fboardCount(search_option,search);
		return count;
	}

	@Override
	public void boardDelete(int boardno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FreeBoard fselectOne(FreeBoard vo) {
		vo = boardDao.fselectOne(vo);
		return vo;
	}

}
