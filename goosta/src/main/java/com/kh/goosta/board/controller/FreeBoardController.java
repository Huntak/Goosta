package com.kh.goosta.board.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.dao.FreePageDAO;

import com.kh.goosta.board.service.FreeBoardService;
import com.kh.goosta.board.vo.FreeBoard;

@Controller //스프링의 컨트롤러 빈으로 등록됨
public class FreeBoardController{



	@Autowired
	private FreeBoardService boardService; // 
	
	@RequestMapping("fdelete.do")
	public String board_delete(@RequestParam int boardno){
		//게시물 삭제 처리
		//답변이 있는 게시물, 댓글이 있는 게시물에 대한 처리가 필요함
		boardService.boardDelete(boardno);
		//게시물 목록으로 이동
	
		return "board/freeboard/fdelete";
	} 

	//HTTP Status 400 - 클라이언트 에러
	//RequestParam에 지정된 값이 넘어오지 않을 경우 에러가 발생함
	
	@RequestMapping("fboardlist.do")
	public ModelAndView freeboardlist(
			@RequestParam(defaultValue="1") int curPage,
			@RequestParam(required=false,defaultValue="all") String search_option,
			@RequestParam(required=false,defaultValue="") String search,
			 ModelAndView mv){
		//@RequestParam에 지정된 변수에 값이 넘어오지 않으면 400번에러발생
		//required=false 필수입력항목이 아님, 기본값은 required=true
		//defaultValue = "기본값"
	

	// 현재 페이지 번호가 curPage에 전달됨
		//전체 페이지 갯수 계산
		int count = boardService.fboardCount(search_option, search);
		//페이지 나누기 관련 정보 설정
		System.out.println(count);
		FreePageDAO pageDao = new FreePageDAO(count, curPage);
		// 현재 페이지의 시작 레코드 번호, 끝 레코드 번호 계산
		int start = pageDao.getPageBegin();
		int end = pageDao.getPageEnd(); 
		
		//sevice  호출
		List<FreeBoard> list = boardService.selectList(start, end, search_option, search);
		System.out.println(list);
		// 모델에 자료 저장
		mv.addObject("list", list);
		//페이지 네비게이션 관련 자료 저장
		mv.addObject("page", pageDao);
		//board_list.jsp로 포워딩되어 출력됨
				
		mv.addObject("search_option", search_option);
		
		mv.addObject("search", search);
		mv.setViewName("board/freeboard/fboardlist");

		
		//board_list.jsp로 포워딩되어 출력됨
		return mv;
	}
	
	
	
	@RequestMapping("fboardwriter.do")
	public String fboardwriter(/*@ModelAttribute FreeBoard vo, HttpSession session, Model model*/){
		
		/*//입력값이 없을 경우 fboardwirte.jsp로 이동
		if(vo.getBoardtitle() == null){
			return "board/freeboard/fboardwriter";
		}else{//입력값이 있을 경우 파일업로드+테이블에 insert 후 이동
			
			//liset.do로 이동
			
			return "redirect:/board/list.do";
			
		}
		*/
		
		return "board/freeboard/fboardwriter";
	}
	
	@RequestMapping("finsert.do")
	public String finsert(FreeBoard vo){
		
		System.out.println(vo);
		int result = boardService.insertfBoard(vo);
		
		return "redirect:/fboardlist.do";
	}
	
	
	@RequestMapping("fboard.do")
	public ModelAndView fboard(ModelAndView mv, FreeBoard vo){
		vo = boardService.fselectOne(vo);
		mv.addObject("bo",vo);
		mv.setViewName("board/freeboard/fboard");
		return mv;
	}
}















