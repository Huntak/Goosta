package com.kh.goosta.manager.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.manager.service.ManagerService;
import com.kh.goosta.member.Service.MemberService;
import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.service.OrderAndPayService;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;
import com.kh.goosta.product.vo.ProductVO;

@Controller
public class ManagerController {
	
	
	@Autowired
	private ManagerService mans;
	
	@RequestMapping("memberManager.do")
	public String memberManager(){
		return "manager/memberManager";
	}
	
	@RequestMapping("memberlistManager.do")
	public ModelAndView memberlistmanager(ModelAndView mv){
		System.out.println("이거 실행되냐");
		List<Member> list = mans.memberlistmanager();
		System.out.println(list);
		mv.addObject("memberlist", list);
		mv.setViewName("manager/memberManager");
		return mv;
	}
	
	@RequestMapping("memberdetailManager.do")
	public ModelAndView memberdetailmanager(ModelAndView mv, Member m){
		m = mans.selectm(m);
		mv.addObject("m", m);
		mv.setViewName("manager/memberdetailview");
		return mv;
	}
	@RequestMapping("mmsearch.do")
	public ModelAndView membersearchmanager(ModelAndView mv, String keyword, String memberSearch, HashMap<String, Object> map, String beforeDate, String afterDate){
		map.put("keyword", keyword);
		map.put("memberSearch",memberSearch);
		System.out.println("멤버매니져 값확인 : "+beforeDate);
		
		if(beforeDate != "" && afterDate != ""){
		map.put("beforeDate",Date.valueOf(beforeDate));
		map.put("afterDate",Date.valueOf(afterDate));
		}
		List<Member> list = mans.membersearchManager(map);
		mv.addObject("memberlist", list);
		mv.setViewName("manager/memberManager");
		return mv;
	}
	
	@RequestMapping("mmupdate.do")
	public ModelAndView memberupdatemanager(ModelAndView mv, Member m){
		int result = mans.updatemembermanager(m);
		m = mans.selectm(m);
		mv.setViewName("redirect:memberdetailManager.do?memberid=" + m.getMemberid());
		return mv;
	}
	
	@RequestMapping("mmdelete.do")
	public ModelAndView memberdelmanager(Member m, String memberid, ModelAndView mv){
		System.out.println("삭제 컨트롤러 실행됨?");
		int result = mans.delmembermanager(m);
		m= mans.selectm(m);
		mv.addObject("memberid", m.getMemberid());
		mv.addObject("memberstatus", m.getMemberstatus());
		mv.setViewName("redirect:memberdetailManager.do");
		return mv;
	}
	
	@RequestMapping("orderlistManager.do")
	public ModelAndView orderlistManager(ModelAndView mv){
		List<OrderAndPayVo> list = mans.selectlistorderManager();
		mv.addObject("list", list);
		mv.setViewName("manager/orderManager");
		return mv;
	}
	@RequestMapping("ordersearchlistManager.do")
	public ModelAndView ordesearchlistManager(ModelAndView mv, String orderSearch,  String keyWord, HashMap<String, Object> map, String beforeDate, String afterDate){
		map.put("keyword", keyWord);
		map.put("orderSearch",orderSearch);
		System.out.println("멤버매니져 값확인 : "+keyWord + "서취타입 : " + orderSearch);
		
		if(beforeDate != "" && afterDate != ""){
		map.put("beforeDate",Date.valueOf(beforeDate));
		map.put("afterDate",Date.valueOf(afterDate));
		}
		List<OrderAndPayVo> list = mans.ordersearchlistmanager(map);
		
		mv.addObject("list", list);
		mv.setViewName("manager/orderManager");
		return mv;
	}
	
	@RequestMapping("orderlistmemberdetail.do")
	public ModelAndView orderlistmemberdetail(ModelAndView mv, Member m){
		System.out.println(m);
		m = mans.selectm(m);
		mv.addObject("m", m);
		mv.setViewName("manager/omdetail");
		return mv;
	}
	
	@RequestMapping("orderlistproductdetail.do")
	public ModelAndView orderlistproductdetail(ModelAndView mv, ProductVO p){
		p = mans.selectp(p);
		mv.addObject("p", p);
		mv.setViewName("manager/productDatailView");
		return mv;
	}
	
	@RequestMapping("orderlistorderdetail.do")
	public ModelAndView orderlistorderdetail(ModelAndView mv, OrderAndPayVo or){
		or = mans.selecto(or);
		mv.addObject("o",or);
		mv.setViewName("manager/orderdetail");
		return mv;
	}
	@RequestMapping("orderlistorderupdate.do")
	public ModelAndView orderlistorderupdate(ModelAndView mv, OrderAndPayVo or){
		if(or.getOrderstatusstatus().equals("결제진행중")){
			or.setOrderstatusnumber(1);
		} else if(or.getOrderstatusstatus().equals("결제완료")){
			or.setOrderstatusnumber(2);
		} else if(or.getOrderstatusstatus().equals("배송준비중")){
			or.setOrderstatusnumber(3);
		} else if(or.getOrderstatusstatus().equals("배송진행중")){
			or.setOrderstatusnumber(4);
		} else if(or.getOrderstatusstatus().equals("배송완료")){
			or.setOrderstatusnumber(5);
		} else if(or.getOrderstatusstatus().equals("구매확정")){
			or.setOrderstatusnumber(6);
		} else if(or.getOrderstatusstatus().equals("주문취소")){
			or.setOrderstatusnumber(7);
		} else if(or.getOrderstatusstatus().equals("교환및환불")){
			or.setOrderstatusnumber(8);
		}
		
		int result = mans.orderlistorderupdate(or);
		or = mans.selecto(or);
		mv.addObject("o", or);
		mv.setViewName("manager/orderdetail");
		
		return mv;
	}
	
	@RequestMapping("orderlistorderdel.do")
	@ResponseBody
	public String orderlistorderdel(OrderAndPayVo or){
		int result = mans.orderlistorderdel(or);
		
		return "ok";
	}
	
}
