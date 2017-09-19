package com.kh.goosta.faq.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goosta.faq.vo.FaqVo;

public interface FaqService {

	//public List<FaqVo> selectAllFaq();

	//public List<FaqVo> selectFaqType(String answertype);

	//public List<FaqVo> searchFaq(String keyword);

	public int faqCount();

	public List<FaqVo> faqList(HashMap<String, Object> map);

	public List<FaqVo> faqListType(HashMap<String, Object> map);

	public int faqCountType(String answertype);

	public int faqCountSearch(String keyword);

	public List<FaqVo> faqListSearch(HashMap<String, Object> map);

	public int faqCountSearchType(HashMap hm);

	public List<FaqVo> faqListSearchType(HashMap<String, Object> map);

	public FaqVo faqDetail(int fid);

	public int faqUpCount(int fid);

	public List<FaqVo> faqRank5();

	public void insertFaq(FaqVo faq);

	public void updateFaq(FaqVo faq);

	public FaqVo viewUpdateFaq(int fid);




}
