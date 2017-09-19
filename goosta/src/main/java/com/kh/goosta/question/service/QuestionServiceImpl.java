package com.kh.goosta.question.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.goosta.question.dao.QuestionDao;
import com.kh.goosta.question.vo.QuestionVo;

@Service("questionService")
public class QuestionServiceImpl implements QuestionService {
	@Resource(name="questionDao")
	private QuestionDao questionDao;

	@Override
	public int writeQna(QuestionVo qna) {
		return questionDao.writeQna(qna);
	}

	@Override
	public List<QuestionVo> selectQnaList() {
		return questionDao.selectQnaList();
	}

	@Override
	public List<QuestionVo> qnaManagerType(String qnatype) {
		return questionDao.qnaManagerType(qnatype);
	}

	@Override
	public QuestionVo qnaDetail(int questionno) {
		return questionDao.qnaDetail(questionno);
	}

	@Override
	public int updateQnaStatus(int questionno) {
		return questionDao.updateQnaStatus(questionno);
		
	}

	@Override
	public List<QuestionVo> viewMyQnaList(String memberid) {
		return questionDao.viewMyQnaList(memberid);
	}
	
}
