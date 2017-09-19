package com.kh.goosta.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.service.ShandService;
import com.kh.goosta.board.vo.ShandVo;
import com.kh.goosta.boardimage.service.ShandImageService;
import com.kh.goosta.reply.service.ShandReplyService;
import com.kh.goosta.reply.vo.ReplyVo;

@Controller
public class ShandController {
	
	@Resource(name="shandService")
	private ShandService shandService;
	
	@Resource(name="shandImageService")
	private ShandImageService shandImageService;
	
	@Resource(name="shandReplyService")
	private ShandReplyService shandReplyService;

	//중고거래 전체 조회
	@RequestMapping("viewShand.do")
	public ModelAndView viewShand(ModelAndView mv){
		List<ShandVo> list = shandService.selectAllShand();
		System.out.println(list.size());
		mv.addObject("list", list);
		mv.setViewName("board/shand/shandList");
		return mv;
	}
	
	//중고거래 상세보기
	@RequestMapping("viewShandDetail.do")
	public ModelAndView ShandDetail(ModelAndView mv, int boardno){
		//조회수 증가 처리
		shandService.upShandCount(boardno);
		//게시물 한개 조회
		ShandVo shand = shandService.ShandDetail(boardno);
		//해당 게시물의 댓글 조회
		List<ReplyVo> replylist = shandReplyService.selectAllShandReply(boardno);
		mv.addObject("shand", shand);
		mv.addObject("replylist", replylist);
		mv.setViewName("board/shand/shandDetail");
		return mv;
	}
	
	//중고거래 글삭제
	@RequestMapping("shandDelete.do")
	public String deleteShand(int boardno){
		int result = shandService.deleteShand(boardno);
		return "redirect:viewShand.do";
	}
	
	//중고거래 글수정 창 보기
	@RequestMapping("viewShandUpdate.do")
		public ModelAndView viewUpdateShand(ModelAndView mv, int boardno){
			ShandVo shand = shandService.ShandDetail(boardno);
			shand.setBoardcontent(shand.getBoardcontent().replaceAll("<br>", "\r\n"));
			mv.addObject("shand", shand);
			mv.setViewName("board/shand/shandUpdate");
				return mv;
	}
	
		//중고거래 글 수정하기
	@RequestMapping("updateShandContent.do")
		public ModelAndView updateShandContent(ModelAndView mv, ShandVo shand){
		
		//게시판내용 줄바꿈 설정
		shand.setBoardcontent(shand.getBoardcontent().replace("\r\n","<br>"));
		
		int result = shandService.updateShandContent(shand);
			
		//jsp 에 보내줄 shand 객체
		ShandVo shandvo = shandService.ShandDetail(shand.getBoardno());
		List<ReplyVo> replylist = shandReplyService.selectAllShandReply(shand.getBoardno());
		mv.addObject("shand", shandvo);
		mv.addObject("replylist", replylist);
		mv.setViewName("board/shand/shandDetail");
			
			return mv;
		}	
	
	//중고거래 글 쓰기 화면
	@RequestMapping("viewShandWrite.do")
	public String viewShandWrite(){
		return "board/shand/shandWrite";
	}
	
	//중고거래 글 등록하기
	@RequestMapping("insertShand.do")
	public String insertBoard(MultipartHttpServletRequest request, ShandVo shand) throws IOException{
		
		//게시판내용 줄바꿈 설정
		shand.setBoardcontent(shand.getBoardcontent().replace("\r\n","<br>"));
		
		//파일 업로드
		MultipartHttpServletRequest multipartRequest =
				(MultipartHttpServletRequest)request;
		List<MultipartFile> uploadFile = multipartRequest.getFiles("uploadFile");
		
		String name = "";
		
		if(!uploadFile.isEmpty()){
		 name = uploadFile.get(0).getOriginalFilename();
		}
		
		//첨부파일이 있을때 
		if(name != null && name.length() != 0 && name != ""){
		
		for(int i = 0; i<uploadFile.size(); i++){
			uploadFile.get(i).transferTo(new File("D:/frame_workspace/goosta/src/main/webapp/resources/uploadFiles/"+uploadFile.get(i).getOriginalFilename()));
		}
	
		HashMap map = new HashMap();
		if(uploadFile.size() == 1){
		map.put("boardimage1", uploadFile.get(0).getOriginalFilename());
		map.put("boardimage2", null);
		map.put("boardimage3", null);
		map.put("boardimage4", null);
		map.put("boardimage5", null);
		}
		else if(uploadFile.size() == 2){
		map.put("boardimage1", uploadFile.get(0).getOriginalFilename());
		map.put("boardimage2", uploadFile.get(1).getOriginalFilename());
		map.put("boardimage3", null);
		map.put("boardimage4", null);
		map.put("boardimage5", null);
		}else if(uploadFile.size() == 3){
			map.put("boardimage1", uploadFile.get(0).getOriginalFilename());
			map.put("boardimage2", uploadFile.get(1).getOriginalFilename());
			map.put("boardimage3", uploadFile.get(2).getOriginalFilename());
			map.put("boardimage4", null);
			map.put("boardimage5", null);
		}
		else if(uploadFile.size() == 4){
			map.put("boardimage1", uploadFile.get(0).getOriginalFilename());
			map.put("boardimage2", uploadFile.get(1).getOriginalFilename());
			map.put("boardimage3", uploadFile.get(2).getOriginalFilename());
			map.put("boardimage4", uploadFile.get(3).getOriginalFilename());
			map.put("boardimage5", null);
		}
		else if(uploadFile.size() == 5){
			map.put("boardimage1", uploadFile.get(0).getOriginalFilename());
			map.put("boardimage2", uploadFile.get(1).getOriginalFilename());
			map.put("boardimage3", uploadFile.get(2).getOriginalFilename());
			map.put("boardimage4", uploadFile.get(3).getOriginalFilename());
			map.put("boardimage5", uploadFile.get(4).getOriginalFilename());
		}
		shandImageService.insertShandImage(map);
		shandService.insertShand(shand);
		}else{
			shandService.insertShand3(shand);
		}
				
		return "redirect:viewShand.do";
	}
	
	//중고거래 판매 완료
	@RequestMapping("salesComplete.do")
	public String salesComplete(int boardno){
		shandService.salesComplete(boardno);
		return "redirect:viewShand.do";
	}
}
