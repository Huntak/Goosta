package com.kh.goosta.faq.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.kh.goosta.faq.vo.FaqVo;

@Repository(value="faqDao")
public class FaqDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	//faq 전체 조회
	/*@SuppressWarnings("unchecked")
	public List<FaqVo> selectAllFaq() {
		return (List<FaqVo>) sqlSession.selectList("faq.selectAllFaq");
	}*/
	
	//faq 타입별로 조회
	/*@SuppressWarnings("unchecked")
	public List<FaqVo> selectFaqType(String answertype) {
		if(answertype.equals("전체")){
			return (List<FaqVo>) sqlSession.selectList("faq.selectAllFaq");
		}
		return (List<FaqVo>) sqlSession.selectList("faq.selectFaqType", answertype);
	}*/

	/*//검색
	@SuppressWarnings("unchecked")
	public List<FaqVo> searchFaq(String keyword) {
		return (List<FaqVo>) sqlSession.selectList("faq.searchFaq", keyword);
	}
	*/
	//게시물 조회 (전체)
	@SuppressWarnings("unchecked")
	public List<FaqVo> faqList(HashMap map){
		return (List<FaqVo>) sqlSession.selectList("faq.faqList", map);
	}
	//게시물 개수 조회 (전체)
	public int faqCount(){
		return (Integer) sqlSession.selectOne("faq.faqCount");
		}
	
	//게시물 개수 조회 (타입별)
	public int faqCountType(String answertype){
		return (Integer) sqlSession.selectOne("faq.faqCountType", answertype);
		}
	
	//게시물 조회 (타입별)
	@SuppressWarnings("unchecked")
	public List<FaqVo> faqListType(HashMap<String, Object> map) {
		return (List<FaqVo>) sqlSession.selectList("faq.faqListType", map);
	}

	//게시물 개수 조회 (전체)
	public int faqCountSearch(String keyword) {
		return (Integer) sqlSession.selectOne("faq.faqCountSearch", keyword);
	}

	//게시물 검색 조회 (전체)
	public List<FaqVo> faqListSearch(HashMap<String, Object> map) {
		return (List<FaqVo>) sqlSession.selectList("faq.faqListSearch", map);
	}

	//게시물 개수 조회 (타입별)
	public int faqCountSearchType(HashMap hm) {
		return (Integer) sqlSession.selectOne("faq.faqCountSearchType", hm);
	}

	//게시물 검색 조회 (타입별)
	public List<FaqVo> faqListSearchType(HashMap<String, Object> map) {
		return (List<FaqVo>) sqlSession.selectList("faq.faqListSearchType", map);
	}
	
	//게시물 상세보기
	public FaqVo faqDetail(int fid) {
		return (FaqVo) sqlSession.selectOne("faq.faqDetail", fid);
	}
	
	//게시물 조회수 증가
	public int faqUpCount(int fid) {
		return (int) sqlSession.update("faq.faqUpCount", fid); 
	}
	public List<FaqVo> faqRank5() {
		return (List<FaqVo>) sqlSession.selectList("faq.faqRank5");
	}
	public void insertFaq(FaqVo faq) {
		sqlSession.insert("faq.insertFaq", faq);
	}
	public void updateFaq(FaqVo faq) {
		sqlSession.update("faq.updateFaq", faq);
		
	}
	public FaqVo viewUpdateFaq(int fid) {
		return (FaqVo) sqlSession.selectOne("faq.viewUpdateFaq", fid);
	}

}
