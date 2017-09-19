package com.kh.goosta.reply.contoller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.goosta.reply.service.ShandReplyService;
import com.kh.goosta.reply.vo.ReplyVo;

@Controller
public class ShandReplyController {
	
	@Resource(name="shandReplyService")
	private ShandReplyService shandReplyService;
	
	//중고거래 댓글등록
	@RequestMapping("insertShandReply.do")
	@ResponseBody
	public List<ReplyVo> insertReply(@RequestParam int boardno, @RequestParam String replywriter, @RequestParam String replycontent){
		HashMap map = new HashMap();
		map.put("boardno", boardno);
		map.put("replywriter", replywriter);
		map.put("replycontent", replycontent);
		
		List<ReplyVo> list = shandReplyService.insertShandReply(map);
		return list;
	}
	
	//중고거래 댓글의 댓글 등록
	@RequestMapping("insertShandReReply.do")
	@ResponseBody
	public List<ReplyVo> insertShandReReply(@RequestParam int boardno, @RequestParam int replyreref, @RequestParam String replycontent, @RequestParam String replywriter){
		
		HashMap map = new HashMap();
		map.put("boardno", boardno);
		map.put("replyreref", replyreref);
		map.put("replycontent", replycontent);
		map.put("replywriter", replywriter);
		
		List<ReplyVo> list = shandReplyService.insertShandReReply(map);
		return list;
	}
	

}
