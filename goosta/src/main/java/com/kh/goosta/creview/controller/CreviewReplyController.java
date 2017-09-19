package com.kh.goosta.creview.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.spi.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.service.ReportService;
import com.kh.goosta.board.vo.ReplyVO;
import com.kh.goosta.creview.service.CreviewService;


// RestController : ajax 처리 전용 컨트롤러(백그라운드에서 실행되는 컨트롤러)
@RestController //스프링 4.0 이상
public class CreviewReplyController {
	
	@Autowired private CreviewService cSvc;
	
	//댓글 목록을 리턴
	@ResponseBody	//리턴자료형을 json으로 변환
	@RequestMapping("creviewReply_list.do")
	public List<ReplyVO> creviewReply_list(@RequestParam int boardno){
		//게시물 번호가 boardno 변수에 저장됨
		System.out.println(boardno);
		List<ReplyVO> replyList =  cSvc.replyList(boardno);
		//뷰로 포워딩되지 않고 데이터만 ajax를 호출한 페이지로 넘김(json 포맷)
		return replyList;
	}
	
	@RequestMapping("creviewReply_insert.do")
	public void creviewReply_insert(
			@RequestParam int boardno
			,@RequestParam String replywriter
			,@RequestParam String replycontent){
		cSvc.replyInsert(boardno,replywriter,replycontent);
		System.out.println(boardno + ","+replywriter+ ","+replycontent);
		System.out.println("111");

	}
	@ResponseBody
	@RequestMapping("getReplyContent.do")
	public List<ReplyVO> getReplyContent(
			@RequestParam int boardno
			,@RequestParam int replyno){
		HashMap map = new HashMap();
		map.put("boardno", boardno);
		map.put("replyno", replyno);
		List<ReplyVO> replyList =  cSvc.getReplyContent(map);
		System.out.println("컨트롤러 : "+replyList.get(0));
		return replyList;
	}
	
}
