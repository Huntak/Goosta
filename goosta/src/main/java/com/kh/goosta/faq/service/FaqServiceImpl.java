package com.kh.goosta.faq.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.goosta.faq.dao.FaqDao;
import com.kh.goosta.faq.vo.FaqVo;

@Service(value="faqService")
public class FaqServiceImpl implements FaqService {
	
	@Resource(name="faqDao")
	private FaqDao faqDao;
/*
	//faq 검색
	@Override
	public List<FaqVo> searchFaq(String keyword) {
		return faqDao.searchFaq(keyword);
	}*/

	//게시물 개수 조회(전체)
	@Override
	public int faqCount() {
		return faqDao.faqCount();
	}

	//게시물 조회(전체)
	@Override
	public List<FaqVo> faqList(HashMap<String, Object> map) {
		return faqDao.faqList(map);
	}

	//게시물 조회(타입별)
	@Override
	public List<FaqVo> faqListType(HashMap<String, Object> map) {
		return faqDao.faqListType(map);
	}

	//게시물 개수 조회(타입별)
	@Override
	public int faqCountType(String answertype) {
		return faqDao.faqCountType(answertype);
	}

	//검색한 게시물 개수 조회(전체)
	@Override
	public int faqCountSearch(String keyword) {
		return faqDao.faqCountSearch(keyword);
	}

	//검색한 게시물 조회 (전체)
	@Override
	public List<FaqVo> faqListSearch(HashMap<String, Object> map) {
		return faqDao.faqListSearch(map);
	}

	//검색한 게시물 개수 조회(타입별)
	@Override
	public int faqCountSearchType(HashMap hm) {
		return faqDao.faqCountSearchType(hm);
	}

	//검색한 게시물 조회 (타입별)
	@Override
	public List<FaqVo> faqListSearchType(HashMap<String, Object> map) {
		return faqDao.faqListSearchType(map);
	}
	
	//게시물 상세보기
	@Override
	public FaqVo faqDetail(int fid) {
		return faqDao.faqDetail(fid);
	}

	//게시물 조회수 증가 처리
	@Override
	public int faqUpCount(int fid) {
		return faqDao.faqUpCount(fid);
	}
	
	//조회수 높은 게시물 5개 조회
	@Override
	public List<FaqVo> faqRank5() {
		return faqDao.faqRank5();
	}

	@Override
	public void insertFaq(FaqVo faq) {
		 faqDao.insertFaq(faq);
	}

	@Override
	public void updateFaq(FaqVo faq) {
		faqDao.updateFaq(faq);
		
	}

	@Override
	public FaqVo viewUpdateFaq(int fid) {
		return faqDao.viewUpdateFaq(fid);
	}
}
