package com.kh.goosta.question.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.question.vo.QuestionVo;

@Repository("questionDao")
public class QuestionDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int writeQna(QuestionVo qna) {
		System.out.println(qna);
		return (Integer) sqlSession.insert("qna.writeQna", qna);
	}

	public List<QuestionVo> selectQnaList() {
		return (List<QuestionVo>) sqlSession.selectList("qna.selectQnaList");
	}

	public List<QuestionVo> qnaManagerType(String qnatype) {
		if(qnatype.equals("문의유형순")){
			return (List<QuestionVo>) sqlSession.selectList("qna.qnaManagerType");
		}else{
			return (List<QuestionVo>) sqlSession.selectList("qna.qnaManagerType2");
		}
	}

	public QuestionVo qnaDetail(int questionno) {
		return (QuestionVo) sqlSession.selectOne("qna.qnaDetail", questionno);
	}

	public int updateQnaStatus(int questionno) {
		return (int) sqlSession.update("qna.updateQnaStatus", questionno);
	}

	public List<QuestionVo> viewMyQnaList(String memberid) {
		return (List<QuestionVo>) sqlSession.selectList("qna.viewMyQnaList", memberid);
	}

}
