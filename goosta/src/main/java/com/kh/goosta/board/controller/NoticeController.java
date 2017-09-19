package com.kh.goosta.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.service.NoticeService;
import com.kh.goosta.board.vo.NoticePageVO;
import com.kh.goosta.board.vo.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService noService;
	
	@RequestMapping(value = "notice.do")
	public ModelAndView noticeList(ModelAndView mv
			,@RequestParam(defaultValue="1") int curPage
			,@RequestParam(required=false, defaultValue="all") String search_option
			,@RequestParam(required=false, defaultValue="") String search
			){	
		//@RequestParam에 지정된 변수에 값이 넘어오지 않으면 400 에러 발생
		//required=false 필수입력항목이 아님, 기본값은 required=true 
		//defaultValue="기본값"
		
		//현재 페이지 번호가  curPage에 전달됨
		//전체 페이지 갯수 계산
		int count = noService.noticeCount(search_option,search);
		//페이지 나누기 관련 정보 설정
		NoticePageVO pageDao = new NoticePageVO(count, curPage);
		//현재 페이지의 시작 레코드 번호, 끝 레코드 번호 계산
		int start = pageDao.getPageBegin();
		int end = pageDao.getPageEnd();
		
		List<NoticeVO> list = noService.selelctList(start,end,search_option,search);
		
		mv.addObject("list", list);
		mv.addObject("page",pageDao);
		//검색관련 정보 저장
		mv.addObject("search_option",search_option);
		mv.addObject("search",search);
		mv.setViewName("board/notice/NoticeList");
		
		return mv;
	}
	
	@RequestMapping(value = "noticeWrite.do")
	public String noticeWrite(){
		
		return "board/notice/NoticeWrite";
	}
	
	@RequestMapping(value = "noticeInsert.do")
	public String noticeInsert(NoticeVO vo){
		
		int result = noService.insertNotice(vo);

		return "redirect:/notice.do";
	}
	
	@RequestMapping(value = "noticeDetail.do")
	public ModelAndView noticeDetail(@RequestParam("boardno") int boardno,@RequestParam("curPage") int curPage,ModelAndView mv){
		
		//조회수 증가
		noService.countUp(boardno);
		//상세화면 조회
		NoticeVO vo = noService.selectOne(boardno);
		mv.addObject("vo",vo);
		mv.addObject("curPage",curPage);
		mv.setViewName("board/notice/NoticeDetail");
		
		return mv;
	}
	
	@RequestMapping(value = "noticeModifyView.do")
	public ModelAndView noticeModifyView(@RequestParam("boardno") int boardno,ModelAndView mv){
		
		
		NoticeVO vo = noService.noticeModifyView(boardno);
		mv.addObject("vo", vo);
		mv.setViewName("board/notice/NoticeModify");
		return mv;
	}
	
	@RequestMapping(value = "noticeModify.do")
	public ModelAndView noticeModify(NoticeVO vo,ModelAndView mv){
		
		noService.noticeModify(vo);
		
		mv.setViewName("redirect:/notice.do");
		return mv;
	}
	
	@RequestMapping(value = "noticeDelete.do")
	public ModelAndView noticeDelete(ModelAndView mv
			,@RequestParam String boardstatus
			,@RequestParam int boardno){
		
		noService.noticeDelete(boardstatus,boardno);
		
		mv.setViewName("redirect:/notice.do");
		return mv;
	}
	
	

}
