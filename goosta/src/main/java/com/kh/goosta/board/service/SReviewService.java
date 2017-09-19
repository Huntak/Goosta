package com.kh.goosta.board.service;

import java.util.List;

import com.kh.goosta.board.vo.SReviewVO;

public interface SReviewService {
	
	int sreviewCount(String search_option, String search);

	List<SReviewVO> selectList(int start, int end, String search_option, String search);

	int insertSReview(SReviewVO vo);

	int insertSReview2(SReviewVO vo);

	SReviewVO selectOne(int boardno);

	void countUp(int boardno);

	int sreviewModify(SReviewVO vo);

	int sreviewModify2(SReviewVO vo);

	int sreviewDelete(int boardno);
	
	/*List<ReplyVO> replyList(int boardno);

	void replyInsert(int boardno, String replywriter, String replycontent);*/

	public double selectStarQuantityRate(String productname);

	public double selectReviewSizeRate(String productname);

	public double selectReviewFootRate(String productname);

	public double selectReviewColorRate(String productname);

	public double selectReviewDeliverRate(String productname);

	int sreviewProductCount(String productnameShort);

	List<SReviewVO> selectmyreviewList(int start, int end, String search_option, String search);

}
