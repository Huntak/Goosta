package com.kh.goosta.board.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import com.kh.goosta.board.service.ReportService;
import com.kh.goosta.board.vo.ReportPageVO;
import com.kh.goosta.board.vo.ReportVO;

@Controller
public class ReportController {
	
	@Autowired
	private ReportService repoService;
	
	//RequestParam에 지정된 값이 넘어오지 않을 경우 에러가 발생
	@RequestMapping(value = "report.do")
	public ModelAndView report(ModelAndView mv
			,@RequestParam(defaultValue="1") int curPage
			,@RequestParam(required=false, defaultValue="all") String search_option
			,@RequestParam(required=false, defaultValue="") String search
			){	
		//@RequestParam에 지정된 변수에 값이 넘어오지 않으면 400 에러 발생
		//required=false 필수입력항목이 아님, 기본값은 required=true 
		//defaultValue="기본값"
		
		
		//현재 페이지 번호가  curPage에 전달됨
		//전체 페이지 갯수 계산
		int count = repoService.reportCount(search_option,search);
		//페이지 나누기 관련 정보 설정
		ReportPageVO pageDao = new ReportPageVO(count, curPage);
		//현재 페이지의 시작 레코드 번호, 끝 레코드 번호 계산
		int start = pageDao.getPageBegin();
		int end = pageDao.getPageEnd();
		
		List<ReportVO> list = repoService.selelctList(start,end,search_option,search);
		
		mv.addObject("list", list);
		mv.addObject("page",pageDao);
		//검색관련 정보 저장
		mv.addObject("search_option",search_option);
		mv.addObject("search",search);
		mv.setViewName("board/report/reportList");
		
		return mv;
	}
	
	@RequestMapping(value = "reportWrite.do")
	public String reportWrite(){
		
		return "board/report/reportWrite";
	}
	
	@RequestMapping(value = "reportInsert.do")
	public String reportInsert(ReportVO vo){
		
		int result = repoService.insertReport(vo);

		return "redirect:/report.do";
	}
	
	@RequestMapping(value = "reportDetail.do")
	public ModelAndView reportDetail(@RequestParam("boardno") int boardno,@RequestParam("curPage") int curPage,ModelAndView mv){
		
		//조회수 증가
		repoService.countUp(boardno);
		//상세화면 조회
		ReportVO vo = repoService.selectOne(boardno);
		mv.addObject("vo",vo);
		mv.addObject("curPage",curPage);
		mv.setViewName("board/report/reportDetail");
		
		return mv;
	}
	
	@RequestMapping(value = "reportModifyView.do")
	public ModelAndView reportModifyView(@RequestParam("boardno") int boardno,ModelAndView mv){
		
		
		ReportVO vo = repoService.reportModifyView(boardno);
		mv.addObject("vo", vo);
		mv.setViewName("board/report/reportModify");
		return mv;
	}

	@RequestMapping(value = "reportModify.do")
	public ModelAndView reportModify(ReportVO vo,ModelAndView mv){
		
		repoService.reportModify(vo);
		
		mv.setViewName("redirect:/report.do");
		return mv;
	}
}
