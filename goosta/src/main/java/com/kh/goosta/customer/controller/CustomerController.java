package com.kh.goosta.customer.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.service.ShopNoticeService;
import com.kh.goosta.board.vo.ShopNoticeVo;
import com.kh.goosta.faq.service.FaqService;
import com.kh.goosta.faq.vo.FaqVo;

@Controller
public class CustomerController {
	@Resource(name="faqService")
		private FaqService faqService;
	
	@Resource(name="shopNoticeService")
	private ShopNoticeService shopNoticeService;
		
		//고객센터 메인화면
		@RequestMapping("viewCustomer.do")
		public ModelAndView viewCustomer(ModelAndView mv) {
			List<FaqVo> faqlist = faqService.faqRank5();
			List<ShopNoticeVo> noticelist = shopNoticeService.selectShopNoticeAll2();
			mv.addObject("noticelist", noticelist);
			mv.addObject("faqlist", faqlist);
			mv.setViewName("customer/main/customer2");
		return mv;
	}
		
		@RequestMapping("viewDeliveryInfo.do")
		public String viewDeliveryInfo(){
			return "customer/main/deliveryInfo";
		}
		

		@RequestMapping("viewExchange.do")
		public String viewExchange(){
			return "customer/main/exchangeInfo";
		}
		
}
