package com.kh.goosta.faq.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.faq.service.FaqService;
import com.kh.goosta.faq.vo.FaqVo;

@Controller
public class FaqController {
	private final int PAGESIZE  = 8; //한번에 보여질 게시글 수
	private final int PAGEGROUP = 3;  //페이지 수	
	
	//Service 와 연결
	@Resource(name="faqService")
	private FaqService faqService;
	
	//검색한 게시물 조회(전체)
	@RequestMapping("faqSearch.do")
	public ModelAndView searchFaq(ModelAndView mv, @RequestParam(defaultValue="") String keyword, String pageNumber){
		// 현재 클릭 페이지
		int pageNum = 1;
		if(pageNumber != null)pageNum = Integer.parseInt(pageNumber);
		// 게시글 전체수 변수 초기화 
		int totalCount = faqService.faqCountSearch(keyword);
		// 페이지 갯수
		int totalPageCount = totalCount / PAGESIZE;
		// 0으로 나눠 떨어지지 않을경우 페이지 갯수를 +1한다.
		if(totalCount % PAGESIZE != 0){totalPageCount++;}
		// startPage or endPage
		int startPage = (pageNum - 1) / PAGEGROUP * PAGEGROUP +1;
		int endPage   = startPage + (PAGEGROUP-1);
		if(endPage > totalPageCount){
			endPage = totalPageCount;
			} 
		// 마지막, 처음 rowNumber 선언 및 초기화
		
		int endRow   = PAGESIZE*pageNum; 	
		int startRow = endRow - PAGESIZE+1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("keyword", keyword);
	
		List<FaqVo> list = faqService.faqListSearch(map);
		mv.addObject("boardCount", list.size());
		mv.addObject("totalPageCount", totalPageCount);
		mv.addObject("startPage", startPage);
		mv.addObject("endPage", endPage);
		mv.addObject("keyword", keyword);
		mv.addObject("list", list);
		mv.setViewName("faq/faqSearch");
		return mv;
	}
	
		//검색한 게시물 조회 (타입별)
		@RequestMapping("faqSearchType.do")
		public ModelAndView searchFaqType(ModelAndView mv, @RequestParam(defaultValue="") String keyword, String pageNumber, @RequestParam(defaultValue="") String answertype){
			System.out.println(keyword);
			System.out.println(answertype);
			// 현재 클릭 페이지
			int pageNum = 1;
			if(pageNumber != null)pageNum = Integer.parseInt(pageNumber);
			// 게시글 전체수 변수 초기화 
			//검색어와 게시글타입 으로 해당하는 총게시물 수 조회
			HashMap hm = new HashMap();
			hm.put("keyword", keyword);
			hm.put("answertype", answertype);
			int totalCount = faqService.faqCountSearchType(hm);
			// 페이지 갯수
			int totalPageCount = totalCount / PAGESIZE;
			// 0으로 나눠 떨어지지 않을경우 페이지 갯수를 +1한다.
			if(totalCount % PAGESIZE != 0){totalPageCount++;}
			// startPage or endPage
			int startPage = (pageNum - 1) / PAGEGROUP * PAGEGROUP +1;
			int endPage   = startPage + (PAGEGROUP-1);
			if(endPage > totalPageCount){
				endPage = totalPageCount;
				} 
			// 마지막, 처음 rowNumber 선언 및 초기화
			
			int endRow   = PAGESIZE*pageNum; 	
			int startRow = endRow - PAGESIZE+1;
			
			//DAO로 보낼 값 맵에 담기
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("startRow", startRow);
			map.put("endRow", endRow);
			map.put("keyword", keyword);
			map.put("answertype", answertype);

			List<FaqVo> list = faqService.faqListSearchType(map);
			
			//JSP에 보내줄 값들
			if(list.size() != 0){
				mv.addObject("boardCount", list.size());
				mv.addObject("list", list);
			}else{
				mv.addObject("boardCount", 0);
				mv.addObject("list", null);
			}
			mv.addObject("totalPageCount", totalPageCount);
			mv.addObject("startPage", startPage);
			mv.addObject("endPage", endPage);
			mv.addObject("keyword", keyword);
		
			if(answertype.equals("배송")){
				mv.setViewName("faq/typeDelivery");
			}else if(answertype.equals("주문")){
				mv.setViewName("faq/typePay");
			}else if(answertype.equals("교환")){
				mv.setViewName("faq/typeChange");
			}else if(answertype.equals("회원")){
				mv.setViewName("faq/typeMember");
			}else if(answertype.equals("기타")){
				mv.setViewName("faq/typeEtc");
			}
		
			return mv;
		}
	 
	//게시물 조회 (전체)
	@RequestMapping("viewfaq.do")
	public ModelAndView list(String pageNumber){ 
	ModelAndView mav = new ModelAndView();
	List<FaqVo> list = null;
	// 현재 클릭 페이지
	int pageNum = 1;
	if(pageNumber != null)pageNum = Integer.parseInt(pageNumber);
	// 게시글 전체수 변수 초기화 
	int totalCount = faqService.faqCount();
	// 페이지 갯수
	int totalPageCount = totalCount / PAGESIZE;
	// 0으로 나눠 떨어지지 않을경우 페이지 갯수를 +1한다.
	if(totalCount % PAGESIZE != 0){totalPageCount++;}
	// startPage or endPage
	int startPage = (pageNum - 1) / PAGEGROUP * PAGEGROUP +1;
	int endPage   = startPage + (PAGEGROUP-1);
	if(endPage > totalPageCount){
		endPage = totalPageCount;
		} 
	// 마지막, 처음 rowNumber 선언 및 초기화
	
	int endRow   = PAGESIZE*pageNum; 	
	int startRow = endRow - PAGESIZE+1;
	
	HashMap map = new HashMap();
	map.put("startRow", startRow);
	map.put("endRow", endRow);

	list = faqService.faqList(map);
	mav.addObject("boardCount", list.size());
	mav.addObject("totalPageCount", totalPageCount);
	mav.addObject("startPage", startPage);
	mav.addObject("endPage", endPage);
	mav.addObject("list", list);
	mav.setViewName("faq/faq");
	return mav;
	}
	
	//게시물 조회 (타입별)
	@RequestMapping("faqType.do")
	public ModelAndView faqType(ModelAndView mv, @RequestParam String answertype, String pageNumber){
		List<FaqVo> list = null;
		// 현재 클릭 페이지
		int pageNum = 1;
		if(pageNumber != null)pageNum = Integer.parseInt(pageNumber);
		// 게시글 전체수 변수 초기화 
		int totalCount = faqService.faqCountType(answertype);
		// 페이지 갯수
		int totalPageCount = totalCount / PAGESIZE;
		// 0으로 나눠 떨어지지 않을경우 페이지 갯수를 +1한다.
		if(totalCount % PAGESIZE != 0){totalPageCount++;}
		// startPage or endPage
		int startPage = (pageNum - 1) / PAGEGROUP * PAGEGROUP +1;
		int endPage   = startPage + (PAGEGROUP-1);
		if(endPage > totalPageCount){
			endPage = totalPageCount;
			} 
		// 마지막, 처음 rowNumber 선언 및 초기화
		
		int endRow   = PAGESIZE*pageNum; 	
		int startRow = endRow - PAGESIZE+1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("answertype", answertype);
		
		
		list = faqService.faqListType(map);
		mv.addObject("boardCount", list.size());
		mv.addObject("totalPageCount", totalPageCount);
		mv.addObject("startPage", startPage);
		mv.addObject("endPage", endPage);
		mv.addObject("list", list);
		
		if(list.get(0).getAnswertype().equals("배송")){
			mv.setViewName("faq/typeDelivery");
		}else if(list.get(0).getAnswertype().equals("주문")){
			mv.setViewName("faq/typePay");
		}else if(list.get(0).getAnswertype().equals("교환")){
			mv.setViewName("faq/typeChange");
		}else if(list.get(0).getAnswertype().equals("회원")){
			mv.setViewName("faq/typeMember");
		}else if(list.get(0).getAnswertype().equals("기타")){
			mv.setViewName("faq/typeEtc");
		}
		return mv;
	}
	
	//faq 상세보기
	@RequestMapping("faqDetail.do")
	public ModelAndView faqDetail(ModelAndView mv, int fid){
		//조회수 증가 처리
		int result = faqService.faqUpCount(fid);
		//jsp 에 보내줄 객체 가져오기
		FaqVo faq = faqService.faqDetail(fid);
		mv.addObject("faq", faq);
		mv.setViewName("faq/faqDetail");
		return mv;
	}
	//글쓰기 화면
	@RequestMapping("viewInsertFaq.do")
	public String viewInsertFaq(){
		return "faq/faqWrite";
	}
	//faq 글등록
	@RequestMapping("insertFaq.do")
	public String insertFaq(FaqVo faq){
		faq.setFcontent(faq.getFcontent().replace("\r\n","<br>"));
		faqService.insertFaq(faq);
		return "redirect:viewfaq.do";
	}
	
	//faq 글수정창 보기
		@RequestMapping("viewUpdateFaq.do")
		public ModelAndView viewUpdateFaq(ModelAndView mv, int fid){
			FaqVo faq = faqService.viewUpdateFaq(fid);
			mv.addObject("faq", faq);
			mv.setViewName("faq/faqUpdate");
			return mv;
		}
		
	//faq 글수정
	@RequestMapping("updateFaq.do")
	public String updateFaq(FaqVo faq){
		faq.setFcontent(faq.getFcontent().replace("\r\n","<br>"));
		faqService.updateFaq(faq);
		return "redirect:viewfaq.do";
	}
}
