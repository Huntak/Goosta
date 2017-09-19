package com.kh.goosta.orderandpay.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.grade.vo.GradeVO;
import com.kh.goosta.member.vo.Member;
import com.kh.goosta.mileage.service.MileageService;
import com.kh.goosta.mileage.vo.MileageVo;
import com.kh.goosta.orderandpay.service.OrderAndPayService;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;
import com.kh.goosta.product.service.ProductImageService;
import com.kh.goosta.product.vo.ProductImageVO;
import com.kh.goosta.product.vo.ProductVO;

@Controller
public class OrderAndPayController {
	
	@Autowired
	private OrderAndPayService oaps;
	
	@Autowired
	private ProductImageService pis;
	
	@Autowired
	private MileageService mServcie;
	   
	
	@RequestMapping(value = "pay.do")
	   public ModelAndView orderandpaypage(HttpServletRequest request,ModelAndView mav, HashMap map, ProductVO p, GradeVO g, Member m) {
	      String productname = request.getParameter("productname");
	      
	      String productsizeStr = request.getParameter("productsize");
	      int productsize = 0;
	      if(productsizeStr != null)
	         productsize = Integer.parseInt(productsizeStr);
	      
	      String quantityStr = request.getParameter("quantity");
	      System.out.println("정체가 뭐냐 시발" + quantityStr);
	      int quantity = 0;
	      if(quantityStr != null)
	         quantity = Integer.parseInt(quantityStr);
	      
	      String mileageStr = request.getParameter("mileage");
	      int mileage = 0;
	      if(mileageStr !=null)
	    	  mileage = Integer.parseInt(mileageStr);
	      
	      String grademileagerateStr = request.getParameter("mileagePercent");
	      String grademileagerate = null;
	      if(grademileagerateStr !=null)
	    	  grademileagerate = grademileagerateStr;
	      
	      String membertotalmileageStr = request.getParameter("membertotalmileage");
	      String membertotalmileage = null;
	      if(membertotalmileageStr != null)
	    	  membertotalmileage = membertotalmileageStr;
	      
	      System.out.println(productname);
	      System.out.println(productsize);
	      System.out.println(quantity);
	      System.out.println(mileage);
	      System.out.println(grademileagerate);
	      System.out.println(membertotalmileage);
	      map.put("productname", productname);
	      map.put("productsize", productsize);

	      p = oaps.selectOnePro(map);
	      ProductImageVO productimage = pis.selectProductImage(productname);
	      
	      int sum = p.getProductprice() * quantity;
	      System.out.println(sum);
	      mav.addObject("sum",sum);
	      
	      mav.addObject("product",p);
	      System.out.println(p.getProductprice());
	      mav.addObject("quantity",quantity);
	      mav.addObject("mileage",mileage);
	      mav.addObject("grademileagerate",grademileagerateStr);
	      mav.addObject("membertotalmileage",membertotalmileage);
	      mav.addObject("productimagemain",productimage.getProductimagemain());
	      System.out.println(p);
	      mav.setViewName("orderandpay/pay");
	      return mav;
	   }
	
	
	@RequestMapping(value = "finish.do")
	public ModelAndView  orderandpayfinish(HttpServletRequest request, ModelAndView mav,OrderAndPayVo oap, HashMap map, ProductVO p, MileageVo m, GradeVO g, Member mem, HttpSession session) {
		  String productname = request.getParameter("productname");
		  String ordermessage = request.getParameter("ordermessage");
	      String productsizeStr = request.getParameter("productsize");
	      int productsize = 0;
	      if(productsizeStr != null)
	         productsize = Integer.parseInt(productsizeStr);
	      String quantityStr = request.getParameter("quantity");
	      int quantity = 0;
	      if(quantityStr != null)
	         quantity = Integer.parseInt(quantityStr);
	      String mileageStr = request.getParameter("mileage");
	      int mileage = 0;
	      if(mileageStr !=null)
	    	  mileage = Integer.parseInt(mileageStr);
	      String grademileagerateStr = request.getParameter("grademileagerate");
	      int grademileagerate = 0;
	      if(grademileagerateStr !=null)
	    	  grademileagerate = Integer.parseInt(grademileagerateStr);
	      String membertotalmileageStr = request.getParameter("membertotalmileage");
	      int membertotalmileage = 0;
	      if(membertotalmileageStr != null)
	    	  membertotalmileage = Integer.parseInt(membertotalmileageStr);
	      String ordermessage2 = request.getParameter("ordermessage2");
	      	if(ordermessage2 != ""){
	      		ordermessage = ordermessage2;
	      	}
	      System.out.println(productname);
	      System.out.println(productsize);
	      System.out.println(quantity);
	      System.out.println(mileage);
	      System.out.println(grademileagerate);
	      System.out.println("주문요청사항" + ordermessage);
	      map.put("productname", productname);
	      map.put("productsize", productsize);

	      p = oaps.selectOnePro(map);
	      ProductImageVO productimage = pis.selectProductImage(productname);
	      
	      int sum = p.getProductprice() * quantity;
	      System.out.println(sum);
	      oap.setProductid(p.getProductid());
	      oap.setOrderlistquantity(quantity);
	      oap.setOrderlisttotalprice(sum);
	      System.out.println("ordermessage : " + ordermessage);
	      oap.setOrdermessage(ordermessage);
	      oaps.insertoap(oap);
	      
	      MileageVo milevo = new MileageVo();
	      milevo.setMileageplus(mileage);
	      milevo.setMemberid(oap.getMemberid());
	      milevo.setMileageminus(0);
	      
	      mServcie.insertMileage(milevo);
	      map.put("memberid", mem.getMemberid());
	      map.put("mileage",mileage);
	      oaps.updatemembermile(map);
	      mem = oaps.selectm(mem.getMemberid());
	      session.setAttribute("loginUser", mem);
	      
	      
	      oap = oaps.selectorder(oap);
	      mav.addObject("sum",sum);
	      mav.addObject("oap",oap);
	      mav.addObject("product",p);
	      System.out.println(p.getProductprice());
	      mav.addObject("quantity",quantity);
	      mav.addObject("mileage",mileage);
	      mav.addObject("grademileagerate",grademileagerateStr);
	      mav.addObject("membertotalmileage",membertotalmileage);
	      mav.addObject("productimagemain",productimage.getProductimagemain());
	      System.out.println(p);
	      mav.setViewName("orderandpay/finish");
	      return mav;
		
	}
	
	/*@RequestMapping("payfo.do")
	public ModelAndView payfo(ModelAndView mav, HttpServletRequest request, HashMap map, OrderAndPayVo oap, MileageVo mi, ProductVO p){
		  String productname = request.getParameter("productname");
		  
	      String productsizeStr = request.getParameter("productsize");
	      int productsize = 0;
	      if(productsizeStr != null)
	         productsize = Integer.parseInt(productsizeStr);
	      
	      String quantityStr = request.getParameter("quantity");
	      int quantity = 0;
	      if(quantityStr != null)
	         quantity = Integer.parseInt(quantityStr);
	      
	      String mileageStr = request.getParameter("mileage");
	      int mileage = 0;
	      if(mileageStr !=null)
	    	  mileage = Integer.parseInt(mileageStr);
	      
	      
	      System.out.println(productname);
	      System.out.println(productsize);
	      System.out.println(quantity);
	      System.out.println(mileage);
	      map.put("productname", productname);
	      map.put("productsize", productsize);

	      p = oaps.selectOnePro(map);
	      ProductImageVO productimage = pis.selectProductImage(productname);
	      
	      int sum = p.getProductprice() * quantity;
	      System.out.println(sum);
	      oaps.insertoap(oap);
	      mav.addObject("sum",sum);
	      mav.addObject("product",p);
	      mav.addObject("quantity",quantity);
	      mav.addObject("mileage",mileage);
	      mav.addObject("productimagemain",productimage.getProductimagemain());
	      System.out.println("결제 요청 oap : " + oap);	      
	      mav.addObject("oap",oap);
	      mav.setViewName("orderandpay/finish");
	      return mav;
		
	}*/
	

	
	@RequestMapping("detail2.do")
	public ModelAndView detail(ModelAndView mav, HttpServletRequest request, OrderAndPayVo oap, MileageVo mi){
		/*mav.addObject()*/
		mav.setViewName("orderandapy/pay");
		return mav;
	}
	

}
