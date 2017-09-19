package com.kh.goosta.mypage.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.member.vo.Member;
import com.kh.goosta.mileage.service.MileageService;
import com.kh.goosta.mileage.vo.MileageVo;
import com.kh.goosta.mypage.service.MypageService;
import com.kh.goosta.orderandpay.service.OrderAndPayService;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;

@Controller
public class MypageController {
	
	
	@Autowired
	private MileageService milesev;
	
	@Autowired
	private MypageService mys;
	
	@RequestMapping("order.do")
	public ModelAndView order(ModelAndView mv, String memberid){
		List<OrderAndPayVo> list = mys.selectOrderlist(memberid);
		System.out.println("마이페이지 주문내역 리스트 : "+list);
		int first = mys.selectCount1(memberid);
		int second = mys.selectCount2(memberid);
		int third = mys.selectCount3(memberid);
		int four = mys.selectCount4(memberid);
		int five = mys.selectCount5(memberid);
		mv.addObject("first",first);
		mv.addObject("second",second);
		mv.addObject("third", third);
		mv.addObject("four", four);
		mv.addObject("five", five);
		mv.addObject("list",list);
		mv.setViewName("mypage/order");
		return mv;
	}
		
	@RequestMapping("mile.do")
	public ModelAndView mile(ModelAndView mv, String memberid){
		System.out.println("마이페이지 마이마일 멤버아이디 : " + memberid);
		List<MileageVo> list = milesev.myMileage(memberid);
		System.out.println("마일리지 컨트롤러 : " +list);
		System.out.println("리스트 갯수 : " + list.size());
		mv.addObject("list",list);
		mv.setViewName("mypage/mile");
		return mv;
	}
	
	@RequestMapping("cancel2.do")
	public String cancel2(){
		return "mypage/cancel2";
	}
	
	@RequestMapping("emailQA2.do")
	public String emailQA2(){
		return "mypage/emailQA2";
	}
	
	@RequestMapping("mypagereview.do")
	public String review(){
		return "mypage/review";
	}
	
	@RequestMapping("mypage.do")
	public ModelAndView mypage(ModelAndView mv,HttpSession session){
		
		if(session.getAttribute("loginUser") != null){
			Member m = (Member) session.getAttribute("loginUser");
			String memberid = m.getMemberid();
		int first = mys.selectCountfirst(memberid);
		int second = mys.selectCountsecond(memberid);
		int third = mys.selectCountthird(memberid);
		mv.addObject("first",first);
		mv.addObject("second",second);
		mv.addObject("third", third);
		mv.setViewName("mypage/mypage");
		}else{
			mv.setViewName("member/login");
		}
		return mv;
	}
	
	@RequestMapping("mypageboard.do")
	public String mypageboard(){
		return "mypage/mypageboard";
	}
	
	@RequestMapping("mypageboardlist.do")
	public String mypageboardlist(){
		return "mypage/mypageboardlist";
	}
	
	@RequestMapping("mypageboardwriter.do")
	public String mypageboardwriter(){ 
		return "mypage/mypageboardwriter";
	}
	
	@RequestMapping("orderSearch.do")
	public ModelAndView orderSearch(ModelAndView mv, String memberid, int orderstatusnumber, HashMap map){
		int first = mys.selectCount1(memberid);
		int second = mys.selectCount2(memberid);
		int third = mys.selectCount3(memberid);
		int four = mys.selectCount4(memberid);
		int five = mys.selectCount5(memberid);
		map.put("memberid", memberid);
		map.put("orderstatusnumber",orderstatusnumber);
		List<OrderAndPayVo> list = mys.selectSearchOrderlist(map);
		mv.addObject("first",first);
		mv.addObject("second",second);
		mv.addObject("third", third);
		mv.addObject("four", four);
		mv.addObject("five", five);
		mv.addObject("list",list);
		mv.setViewName("mypage/order");
		return mv;
	}
	
	@RequestMapping("upenroll.do")
	public String upenroll(){
		return "mypage/updateenroll";
	}
	
	@RequestMapping("updateenroll3.do")
	public String updateenroll3 (Member m, HttpSession session){
		
		int result = mys.updateenroll(m);
		System.out.println("result?"+result);
			m = mys.selectm(m);
			session.setAttribute("loginUser", null);
			session.setAttribute("loginUser", m);
			System.out.println("세션 바뀌냐"+session.getAttribute("loginUser"));
		
		
		return "mypage/mypage";
	}
	@RequestMapping("delm.do")
	public String delm(){
		return "mypage/deletemember";
	}
	@RequestMapping("deletemember.do")
	
	public ModelAndView deletemember(Member m, ModelAndView mv, HttpSession session){
		int result = mys.deletemember(m);
		if(result != 0){
		mv.setViewName("common/main");
		session.setAttribute("loginUser", null);
		}
		else{
			mv.setViewName("mypage/deletemember");
		}
		
		return mv;
	}
	
}
