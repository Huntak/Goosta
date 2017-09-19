package com.kh.goosta.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.board.dao.NoticeDao;
import com.kh.goosta.board.vo.NoticeVO;

@Service("noService")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDao noDao;

	@Override
	public List<NoticeVO> selelctList(int start, int end, String search_option, String search) {
		List<NoticeVO> list = noDao.selectList(start,end,search_option,search);
		return list;
	}

	@Override
	public int noticeCount(String search_option, String search) {
		int count = noDao.noticeCount(search_option,search);
		return count;
	}

	@Override
	public int insertNotice(NoticeVO vo) {
		int result = noDao.insertNotice(vo);
		return result;
	}

	@Override
	public void countUp(int boardno) {
		noDao.countUp(boardno);
	}

	@Override
	public NoticeVO selectOne(int boardno) {
		NoticeVO vo = noDao.selectOne(boardno);
		return vo;
	}

	@Override
	public NoticeVO noticeModifyView(int boardno) {
		NoticeVO vo = noDao.noticeModifyView(boardno);
		return vo;
	}

	@Override
	public void noticeModify(NoticeVO vo) {
		noDao.noticeModify(vo);
	}

	@Override
	public void noticeDelete(String boardstatus, int boardno) {
		noDao.noticeDelete(boardstatus,boardno);
		
	}

}
