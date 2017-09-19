package com.kh.goosta.creview.controller;

import java.io.*;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.creview.service.CreviewService;
import com.kh.goosta.creview.vo.CreviewVO;

@Controller
public class CreviewController {
		
	@Autowired private CreviewService cSvc;
		@RequestMapping(value = "CreviewWriteForm.do")
		public String CreviewWrite(){
			return "board/Creview/CreviewWrite";
		}
		
		@RequestMapping(value = "CreviewWrite.do")
		public String insertCreview(Model model, CreviewVO vo, HttpServletRequest request
				) throws IOException{ 
			
			MultipartHttpServletRequest multipartRequest =
					(MultipartHttpServletRequest)request;
			MultipartFile uploadFile = multipartRequest.getFile("uploadFile");
			//String root = request.getSession().getServletContext().getRealPath("/");
			String root = "C:/spring/dev/workspace/goosta/src/main/webapp/resources/";
			String savePath = root + "uploadFiles/creview/";
			
			if(!uploadFile.isEmpty()){
				String ofileName = uploadFile.getOriginalFilename();
				long currentTime = System.currentTimeMillis();  
			    SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");
				String rfileName = simDf.format(new Date(currentTime)) +"."
						+ ofileName.substring(ofileName.lastIndexOf(".")+1);;
				uploadFile.transferTo(new File(savePath + rfileName));
							
				vo.setBoardimage1(rfileName);
			}else{
				vo.setBoardimage1("");
			}
			System.out.println("출력값:  "+vo);
			cSvc.insertCreview(vo);
			List<CreviewVO> list = cSvc.creviewListView();
			model.addAttribute("list", list);
			return "redirect:CreviewList.do";
			//return new ModelAndView("redirect:/main/index.do");
		}
		
		@RequestMapping(value = "CreviewDetail.do")
		public String Creview(@RequestParam("boardno") int boardno, Model model) throws Exception{
			CreviewVO detail = (CreviewVO) cSvc.creviewDetail(boardno);
			model.addAttribute("detail", detail);
			return "board/Creview/Creview";
		}
		@RequestMapping(value = "CreviewList.do")
		public String CreviewListView(Model model) {
			List<CreviewVO> list = cSvc.creviewListView();
			model.addAttribute("list", list);
			return "board/Creview/CreviewList";
		}
		@RequestMapping(value = "CreviewDelete.do")
		public String CreviewDelete(@RequestParam(value ="boardno") int boardno, Model model) {
			cSvc.creviewDelete(boardno);
			List<CreviewVO> list = cSvc.creviewListView();
			model.addAttribute("list", list);
			return "redirect:CreviewList.do";
		}
		@RequestMapping(value = "CreviewModifyFormView.do")
		public String CreviewModifyFormView(@RequestParam(value ="boardno") int boardno, Model model) {
			CreviewVO detail = (CreviewVO)cSvc.creviewDetail(boardno);
			model.addAttribute("detail", detail);
			return "board/Creview/CreviewModify";
		}
		@RequestMapping(value = "CreviewModify.do")
		public String CreviewModify(Model model, CreviewVO vo,
				HttpServletRequest request) throws Exception{
			
			MultipartHttpServletRequest multipartRequest =
					(MultipartHttpServletRequest)request;
			MultipartFile uploadFile = multipartRequest.getFile("uploadFile");
			//String root = request.getSession().getServletContext().getRealPath("/");
			String root = "C:/spring/dev/workspace/goosta/src/main/webapp/resources/";
			String savePath = root + "uploadFiles/creview/";
			
			if(!uploadFile.isEmpty()){
				String ofileName = uploadFile.getOriginalFilename();
				long currentTime = System.currentTimeMillis();  
			    SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");
				String rfileName = simDf.format(new Date(currentTime)) +"."
						+ ofileName.substring(ofileName.lastIndexOf(".")+1);;
				uploadFile.transferTo(new File(savePath + rfileName));
							
				vo.setBoardimage1(rfileName);
			}else{
				vo.setBoardimage1("");
			}
			cSvc.creviewModify(vo);
			List<CreviewVO> list = cSvc.creviewListView();
			model.addAttribute("list", list);
			return "redirect:CreviewList.do";
		}
		@RequestMapping(value = "CreviewSearch.do")
		public String CreviewSearch(@RequestParam(value="searchtext") String searchtext,
				Model model) throws Exception{
			System.out.println(searchtext);
			List<CreviewVO> list = cSvc.creviewSearch(searchtext);
			model.addAttribute("list", list);
			System.out.println(list.size());
			return "board/Creview/CreviewList";
		}
	}
