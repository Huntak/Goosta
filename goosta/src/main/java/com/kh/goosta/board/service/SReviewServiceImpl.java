package com.kh.goosta.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.board.dao.SReviewDao;
import com.kh.goosta.board.vo.SReviewVO;

@Service("sreviewService")
public class SReviewServiceImpl implements SReviewService {
	
	@Autowired
	private SReviewDao srd;
	/*@Autowired
	private ReportReplyDao replyDao;*/

	@Override
	public int sreviewCount(String search_option, String search) {
		return srd.sreviewCount(search_option,search);
	}

	@Override
	public List<SReviewVO> selectList(int start, int end, String search_option, String search) {
		return srd.selectList(start,end,search_option,search);
	}

	@Override
	public int insertSReview(SReviewVO vo) {
		return srd.insertSReview(vo);
	}

	@Override
	public int insertSReview2(SReviewVO vo) {
		return srd.insertSReview2(vo);
	}

	@Override
	public SReviewVO selectOne(int boardno) {
		return srd.selectOne(boardno);
	}

	@Override
	public void countUp(int boardno) {
		srd.countUp(boardno);
	}

	@Override
	public int sreviewModify(SReviewVO vo) {
		return srd.sreviewModify(vo);
	}

	@Override
	public int sreviewModify2(SReviewVO vo) {
		return srd.sreviewModify2(vo);
	}

	@Override
	public int sreviewDelete(int boardno) {
		return srd.sreviewDelete(boardno);
	}

	/*@Override
	public List<ReplyVO> replyList(int boardno) {
		return replyDao.replyList(boardno);
	}

	@Override
	public void replyInsert(int boardno, String replywriter, String replycontent) {
		replyDao.replyInsert(boardno,replywriter,replycontent);
	}*/

	@Override
	public double selectStarQuantityRate(String productname) {
		return srd.selectStarQuantityRate(productname);
	}

	@Override
	public double selectReviewSizeRate(String productname) {
		return srd.selectReviewSizeRate(productname);
	}

	@Override
	public double selectReviewFootRate(String productname) {
		return srd.selectReviewFootRate(productname);
	}

	@Override
	public double selectReviewColorRate(String productname) {
		return srd.selectReviewColorRate(productname);
	}

	@Override
	public double selectReviewDeliverRate(String productname) {
		return srd.selectReviewDeliverRate(productname);
	}

	@Override
	public int sreviewProductCount(String productnameShort) {
		return srd.sreviewProductCount(productnameShort);
	}
	
	@Override
	public List<SReviewVO> selectmyreviewList(int start, int end, String search_option, String search) {
		return srd.selectmyreviewList(start,end,search_option,search);
	}

}
