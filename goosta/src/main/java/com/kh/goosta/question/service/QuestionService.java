package com.kh.goosta.question.service;

import java.util.List;

import com.kh.goosta.question.vo.QuestionVo;

public interface QuestionService {

	int writeQna(QuestionVo qna);

	List<QuestionVo> selectQnaList();

	List<QuestionVo> qnaManagerType(String qnatype);

	QuestionVo qnaDetail(int questionno);

	int updateQnaStatus(int questionno);

	List<QuestionVo> viewMyQnaList(String memberid);

}
