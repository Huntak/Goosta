package com.kh.goosta.board.controller;

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


// RestController : ajax 처리 전용 컨트롤러(백그라운드에서 실행되는 컨트롤러)
@RestController //스프링 4.0 이상
public class ReportReplyController {
	
	@Autowired
	private ReportService repoService;
	
	//댓글 목록을 리턴
	@ResponseBody	//리턴자료형을 json으로 변환
	@RequestMapping("reportReply_list.do")
	public List<ReplyVO> reportReply_list(@RequestParam int boardno){
		//게시물 번호가 boardno 변수에 저장됨
		List<ReplyVO> replyList =  repoService.replyList(boardno);
		//뷰로 포워딩되지 않고 데이터만 ajax를 호출한 페이지로 넘김(json 포맷)
		return replyList;
	}
	
	@RequestMapping("reportReply_insert.do")
	public void reportReply_insert(
			@RequestParam int boardno
			,@RequestParam String replywriter
			,@RequestParam String replycontent){
		repoService.replyInsert(boardno,replywriter,replycontent);
	}
	
	@RequestMapping("reportReply_modify.do")
	public void reportReply_modify(
			@RequestParam int replyno
			,@RequestParam String replycontent){
		repoService.replyModify(replyno,replycontent);
	}
	
	@RequestMapping("reportReply_delete.do")
	public void reportReply_delete(
			@RequestParam int replyno){
		repoService.replyDelete(replyno);
	}

}
