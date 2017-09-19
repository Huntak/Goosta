package com.kh.goosta.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.service.SReviewService;
import com.kh.goosta.board.vo.SReviewPageVO;
import com.kh.goosta.board.vo.SReviewVO;
import com.kh.goosta.member.vo.Member;
import com.kh.goosta.product.service.ProductImageService;
import com.kh.goosta.product.service.ProductService;
import com.kh.goosta.product.vo.ProductVO;

@Controller
public class MyReviewController {

	@Autowired
	private SReviewService srs;

	@Autowired
	private ProductImageService pis;
	
	@Autowired
	private ProductService ps;
	
	//RequestParam에 지정된 값이 넘어오지 않을 경우 에러가 발생
		@RequestMapping(value = "myreview.do")
		public ModelAndView myreview(ModelAndView mv, @RequestParam(defaultValue = "1") int curPage, @RequestParam(required = false, defaultValue = "all") String search_option, @RequestParam(required = false, defaultValue = "") String search) {
			//@RequestParam에 지정된 변수에 값이 넘어오지 않으면 400 에러 발생
			//required=false 필수입력항목이 아님, 기본값은 required=true 
			//defaultValue="기본값"

			//현재 페이지 번호가  curPage에 전달됨
			//전체 페이지 갯수 계산
			int count = srs.sreviewCount(search_option, search);
			//페이지 나누기 관련 정보 설정
			SReviewPageVO pageDao = new SReviewPageVO(count, curPage);
			//현재 페이지의 시작 레코드 번호, 끝 레코드 번호 계산
			int start = pageDao.getPageBegin();
			int end = pageDao.getPageEnd();

			List<SReviewVO> list = srs.selectmyreviewList(start, end, search_option, search);

			System.out.println(list);
			System.out.println(pageDao);
			System.out.println(search_option);
			System.out.println(search);
			
			
			
			for(int i = 0; i < list.size(); i++){
				int productid = list.get(i).getProductid();
				
				ProductVO product = ps.selectProduct(productid);
				list.get(i).setProductname(product.getProductname());
				list.get(i).setProductsize(product.getProductsize());

				String productimagemain = pis.selectProductsMainImage(productid);
				list.get(i).setProductimagemain(productimagemain);
			}
			

			
			mv.addObject("list", list);
			mv.addObject("page", pageDao);
			//검색관련 정보 저장
			mv.addObject("search_option", search_option);
			mv.addObject("search", search);
			
			mv.setViewName("mypage/myreview/myreview");

			return mv;
		}

		@RequestMapping(value = "myreviewWrite.do")
		public ModelAndView sreviewWrite(ModelAndView mv, HttpSession session, @RequestParam int productid) {
			Member loginUser = (Member) session.getAttribute("loginUser");
			String loginUserId = "";
			if(loginUser != null)
				loginUserId = loginUser.getMemberid();
			
			ProductVO product = ps.selectProduct(productid);
			
			System.out.println(product);
			
			String productimagemain = pis.selectProductsMainImage(productid);
			
			System.out.println(productimagemain);
			
			mv.addObject("loginUserId", loginUserId);
			mv.addObject("product", product);
			mv.addObject("productimagemain", productimagemain);
			
			mv.setViewName("mypage/myreview/myreviewWrite");
			
			return mv;
		}

		@RequestMapping(value = "myreviewInsert.do")
		public String sreviewInsert(SReviewVO vo, HttpSession session) {
			//System.out.println("vo  : " + vo);
			int result = srs.insertSReview(vo);
			int result2 = srs.insertSReview2(vo);
			
			Member loginUser = (Member) session.getAttribute("loginUser");
			
			return "redirect:/myreview.do?search_option=boardwriter&search=" + loginUser.getMemberid();
		}

		@RequestMapping(value = "myreviewDetail.do")
		public ModelAndView sreviewDetail(@RequestParam("boardno") int boardno, @RequestParam("curPage") int curPage, ModelAndView mv) {
			//조회수 증가
			srs.countUp(boardno);
			//상세화면 조회
			SReviewVO vo = srs.selectOne(boardno);
			
			System.out.println(vo);
			
			ProductVO product = ps.selectProduct(vo.getProductid());
			
			System.out.println(product);
			
			String productimagemain = pis.selectProductsMainImage(vo.getProductid());
			
			System.out.println(productimagemain);
			
			mv.addObject("vo", vo);
			mv.addObject("curPage", curPage);
			mv.addObject("product", product);
			mv.addObject("productimagemain", productimagemain);
			
			mv.setViewName("mypage/myreview/myreviewDetail");
			
			return mv;
		}

		@RequestMapping(value = "myreviewModifyView.do")
		public ModelAndView sreviewModifyView(@RequestParam("boardno") int boardno, ModelAndView mv) {
			SReviewVO vo = srs.selectOne(boardno);
			
			ProductVO product = ps.selectProduct(vo.getProductid());
			
			System.out.println(product);
			
			String productimagemain = pis.selectProductsMainImage(vo.getProductid());
			
			System.out.println(productimagemain);
			
			mv.addObject("vo", vo);
			mv.addObject("product", product);
			mv.addObject("productimagemain", productimagemain);
			
			mv.setViewName("mypage/myreview/myreviewModify");
			
			return mv;
		}

		@RequestMapping(value = "myreviewModify.do")
		public ModelAndView sreviewModify(SReviewVO vo, ModelAndView mv, HttpSession session) {
			int result = srs.sreviewModify(vo);
			int result2 = srs.sreviewModify2(vo);
			Member loginUser = (Member) session.getAttribute("loginUser");
			
			mv.setViewName("redirect:/myreview.do?search_option=boardwriter&search=" + loginUser.getMemberid());
			
			return mv;
		}

		@RequestMapping(value = "myreviewDelete.do")
		public String sreviewDelete(@RequestParam("boardno") int boardno, HttpSession session) {
			int result = srs.sreviewDelete(boardno);
			
			Member loginUser = (Member) session.getAttribute("loginUser");
			
			return "redirect:/myreview.do?search_option=boardwriter&search=" + loginUser.getMemberid();
		}
}
