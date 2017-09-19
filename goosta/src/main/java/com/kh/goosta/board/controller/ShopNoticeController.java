package com.kh.goosta.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.service.ShopNoticeService;
import com.kh.goosta.board.vo.ShopNoticeVo;
import com.kh.goosta.faq.vo.FaqVo;

@Controller
public class ShopNoticeController {
	
	@Resource(name="shopNoticeService")
	private ShopNoticeService shopNoticeService;
	
	@RequestMapping("viewShopNotice.do")
	public ModelAndView shopNoticeList(ModelAndView mv, String pageNumber){
		int PAGESIZE  = 8; //한번에 보여질 게시글 수
		int PAGEGROUP = 3;  //페이지 수	
		// 현재 클릭 페이지
		int pageNum = 1;
		if(pageNumber != null)pageNum = Integer.parseInt(pageNumber);
		// 게시글 전체수 변수 초기화 
		int totalCount = shopNoticeService.shopNoticeCount();
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

		List<ShopNoticeVo> list = shopNoticeService.selectShopNoticeAll(map);
		mv.addObject("boardCount", list.size());
		mv.addObject("totalPageCount", totalPageCount);
		mv.addObject("startPage", startPage);
		mv.addObject("endPage", endPage);
		mv.addObject("NoticeList", list);
		mv.setViewName("customer/sNotice/shopNoticeList");
		return mv;
	}
	
	@RequestMapping("shopNoticeSearch.do")
	public ModelAndView shopNoticeSearch(ModelAndView mv, @RequestParam(defaultValue="") String keyword, String pageNumber){
				int PAGESIZE  = 8; //한번에 보여질 게시글 수
				int PAGEGROUP = 3;  //페이지 수	
				// 현재 클릭 페이지
				int pageNum = 1;
				if(pageNumber != null)pageNum = Integer.parseInt(pageNumber);
				// 게시글 전체수 변수 초기화 
				int totalCount = shopNoticeService.shopNoticeCountSearch(keyword);
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
			
				List<ShopNoticeVo> list = shopNoticeService.shopNoticeListSearch(map);
				mv.addObject("boardCount", list.size());
				mv.addObject("totalPageCount", totalPageCount);
				mv.addObject("startPage", startPage);
				mv.addObject("endPage", endPage);
				mv.addObject("keyword", keyword);
				mv.addObject("NoticeList", list);
				mv.setViewName("customer/sNotice/shopNoticeList");
				return mv;
	}
	
	//쇼핑몰 공지사항 상세보기
	@RequestMapping("shopNoticeDetail.do")
	public ModelAndView shopNoticeDetail(ModelAndView mv, int boardno){
		ShopNoticeVo shopNoticeVo = shopNoticeService.shopNoticeDetail(boardno);
		shopNoticeVo.setBoardcontent(shopNoticeVo.getBoardcontent().replaceAll("<br>", "\r\n"));
		mv.addObject("snv", shopNoticeVo);
		mv.setViewName("customer/sNotice/shopNoticeDetail");
		return mv;
	}
	
	//쇼핑몰 공지사항 글등록 화면
	@RequestMapping("viewShopNoticeWrite.do")
	public String viewShopNoticeWrite(){
		return "customer/sNotice/shopNoticeWrite";
	}
	
	//쇼핑몰 공지사항 글 등록하기
	@RequestMapping("shopNoticeWrite.do")
	public String shopNoticeWrite(MultipartHttpServletRequest request, ShopNoticeVo snv) throws IOException{
		//게시판내용 줄바꿈 설정
		snv.setBoardcontent(snv.getBoardcontent().replace("\r\n","<br>"));
		
		//파일 업로드
		MultipartHttpServletRequest multipartRequest =
				(MultipartHttpServletRequest)request;
		
		MultipartFile uploadFile = multipartRequest.getFile("uploadFile");
		
		//파일명 추출
		String name = uploadFile.getOriginalFilename();
		
		//첨부파일이 있을때 
		if(name != null && name.length() != 0 && name != ""){
		
		//파일경로 와 저장될 파일명 정해준후 파일 업로드
		uploadFile.transferTo(new File("D:/frame_workspace/goosta/src/main/webapp/resources/uploadFiles/"+uploadFile.getOriginalFilename()));
		
		//이미지1 이름을 첨부파일명으로 set해줌
		snv.setBoardimage1(uploadFile.getOriginalFilename());
		
		//이미지 테이블에 인서트
		int result1 = shopNoticeService.insertShopNoticeImage(uploadFile.getOriginalFilename());
		//게시판 테이블에 인서트
		int result2 = shopNoticeService.insertShopNotice(snv);
		}else{
			//첨부파일 없을때 (이미지 테이블에 인서트 하지 않음)
			snv.setBoardimage1(null);
			int result2 = shopNoticeService.insertShopNotice(snv);
		}
		return "redirect:viewShopNotice.do";
	}
	
	//글 수정창 보기
	@RequestMapping("viewShopNoticeUpdate")
	public ModelAndView viewShopNoticeUpdate(ModelAndView mv, int boardno){
		ShopNoticeVo notice = shopNoticeService.shopNoticeDetail(boardno);
		notice.setBoardcontent(notice.getBoardcontent().replaceAll("<br>", "\r\n"));
		mv.addObject("notice", notice);
		mv.setViewName("customer/sNotice/shopNoticeUpdate");
		return mv;
	}
	
	//글 수정후 등록
	@RequestMapping("shopNoticeUpdate.do")
	public String shopNoticeUpdate(ShopNoticeVo snv){
		System.out.println(snv);
		int result = shopNoticeService.shopNoticeUpdate(snv);
		System.out.println(result);
		return "redirect:viewShopNotice.do";
	}

}
