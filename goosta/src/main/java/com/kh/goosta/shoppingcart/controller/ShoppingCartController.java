package com.kh.goosta.shoppingcart.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.common.logger.LoggerInterceptor;
import com.kh.goosta.member.vo.Member;
import com.kh.goosta.orderandpay.service.OrderAndPayService;
import com.kh.goosta.product.service.ProductImageService;
import com.kh.goosta.product.service.ProductService;
import com.kh.goosta.product.vo.ProductImageVO;
import com.kh.goosta.product.vo.ProductVO;
import com.kh.goosta.shoppingcart.service.ShoppingCartService;
import com.kh.goosta.shoppingcart.vo.ShoppingCartVo;

@Controller
public class ShoppingCartController {
	protected Logger log = Logger.getLogger(ShoppingCartController.class);
	
	@Autowired
	private OrderAndPayService oaps;
		
	@Autowired
	private ShoppingCartService scs;
	
	@Autowired
	private ProductImageService pis;
	
	@Autowired
	private ProductService ps;
	
	
	@RequestMapping("cart2.do")
	   public ModelAndView orderandpaypage(HttpServletRequest request, ModelAndView mav, HashMap map, ProductVO p, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		if(loginUser != null){
		 String memberid = loginUser.getMemberid();
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
	      map.put("productname", productname);
	      map.put("productsize", productsize);
	      
	      p = oaps.selectOnePro(map);
	      ProductImageVO productimage = pis.selectProductImage(productname);
	      int productid = p.getProductid();
	      ShoppingCartVo scv = new ShoppingCartVo(0,memberid,productid,quantity);
	      int result = scs.insertShoppingCartVo(scv);
	      
	     /* List<ProductVO> productSizeList = ps.selectProductSize(productname);*/
	      List<ShoppingCartVo> shoppingcart = scs.selectShoppingCart(loginUser);
	      ArrayList<Object> productlist = new ArrayList<Object>();
	      ArrayList<ProductImageVO> productimagelist = new ArrayList<ProductImageVO>();
	      for(int i =0; i<shoppingcart.size();i++){
	    	  ProductVO pro = scs.selectProductVO(shoppingcart.get(i));
	    	  String main = scs.selectmainimage(pro);
	    	  pro.setCartquantity(shoppingcart.get(i).getCartquantity());
	    	  pro.setProductimagemain(main);
	    	  System.out.println("여기에 과연" + main);
	    	  productlist.add(pro);
	      }
	      
	      for(int i =0; i< shoppingcart.size(); i++)
	      System.out.println(shoppingcart.get(i));
	      mav.addObject("productlist", productlist);
	  
	      int sum = p.getProductprice() * quantity;
	      System.out.println(sum);
	      mav.addObject("sum",sum);
	      mav.addObject("shoppingcart",shoppingcart);
	      mav.addObject("size",productlist.size());
	      mav.addObject("mileage", mileage);
	      mav.addObject("quantity", quantity);
	      mav.addObject("grademileagerate",grademileagerateStr);
	      mav.addObject("membertotalmileage",membertotalmileage);
	      mav.addObject("productimagemain",productimage.getProductimagemain());
	      mav.setViewName("redirect:cart.do");
	      
		}else{
			mav.setViewName("member/login");
		}
		return mav;
	   }
	
	@RequestMapping("cart.do")
	public ModelAndView cartview(ModelAndView mv,HttpServletRequest request, HttpSession session){
		Member m = (Member) session.getAttribute("loginUser");
		String mileageStr = request.getParameter("mileage");
	      int mileage = 0;
	      if(mileageStr !=null)
	    	  mileage = Integer.parseInt(mileageStr);
	      String grademileagerateStr = request.getParameter("grademileagerate");
	      String grademileagerate = null;
	      if(grademileagerateStr !=null)
	    	  grademileagerate = grademileagerateStr;
	      System.out.println("마일리지님 제발좀" + mileage);
	      String membertotalmileageStr = request.getParameter("membertotalmileage");
	      String membertotalmileage = null;
	      if(membertotalmileageStr != null)
	    	  membertotalmileage = membertotalmileageStr;
	      
		List<ShoppingCartVo> shoppingcart = scs.selectShoppingCart(m);
	      ArrayList<Object> productlist = new ArrayList<Object>();
	      ArrayList<ProductImageVO> productimagelist = new ArrayList<ProductImageVO>();
	      for(int i =0; i<shoppingcart.size();i++){
	    	  ProductVO pro = scs.selectProductVO(shoppingcart.get(i));
	    	  String main = scs.selectmainimage(pro);
	    	  pro.setCartquantity(shoppingcart.get(i).getCartquantity());
	    	  mv.addObject("quantity", shoppingcart.get(i).getCartquantity());
	    	  pro.setProductimagemain(main);
	    	  System.out.println("여기에 과연" + main);
	    	  productlist.add(pro);
	    	  System.out.println("cart.do + " + pro);
	      }
	      
	      System.out.println("프로덕트 리스트 : " +productlist);
	      mv.addObject("mileage", mileage);
	      mv.addObject("size",productlist.size());
	      mv.addObject("mileagePercent",grademileagerateStr);
	      mv.addObject("membertotalmileage",membertotalmileage);
	      mv.addObject("shoppingcart",shoppingcart);
	      mv.addObject("productlist",productlist);
	      mv.setViewName("orderandpay/cart");
		return mv;
	}
	
	@RequestMapping("cartdel.do")
	public ModelAndView cartdel(ModelAndView mv, ShoppingCartVo scv, HttpServletRequest request, HttpSession session){
		String productname = request.getParameter("productname");
		Member m = (Member) session.getAttribute("loginUser");
		String mileageStr = request.getParameter("mileage");
	      int mileage = 0;
	      if(mileageStr !=null)
	    	  mileage = Integer.parseInt(mileageStr);
	      String grademileagerateStr = request.getParameter("grademileagerate");
	      String grademileagerate = null;
	      if(grademileagerateStr !=null)
	    	  grademileagerate = grademileagerateStr;
	      System.out.println("마일리지님 제발좀" + mileage);
	      String membertotalmileageStr = request.getParameter("membertotalmileage");
	      String membertotalmileage = null;
	      if(membertotalmileageStr != null)
	    	  membertotalmileage = membertotalmileageStr;
	      String quantityStr = request.getParameter("quantity");
	      int quantity = 0;
	      if(quantityStr != null)
	         quantity = Integer.parseInt(quantityStr);
		System.out.println("카트딜리트 카트아이디 옵니까?" + scv.getCartid());
		int result = scs.cartdel(scv);
		System.out.println(m);
		System.out.println("상품이름 : " + productname);
		List<ShoppingCartVo> shoppingcart = scs.selectShoppingCart(m);
	      ArrayList<Object> productlist = new ArrayList<Object>();
	      ProductImageVO productimage = pis.selectProductImage(productname);
	      ArrayList<ProductImageVO> productimagelist = new ArrayList<ProductImageVO>();
	      for(int i =0; i<shoppingcart.size();i++){
	    	  ProductVO pro = scs.selectProductVO(shoppingcart.get(i));
	    	  String main = scs.selectmainimage(pro);
	    	  pro.setCartquantity(shoppingcart.get(i).getCartquantity());
	    	  mv.addObject("quantity", shoppingcart.get(i).getCartquantity());
	    	  pro.setProductimagemain(main);
	    	  System.out.println("여기에 과연" + main);
	    	  productlist.add(pro);
	    	  System.out.println("cart.do + " + pro);
	      }
	      mv.addObject("shoppingcart",shoppingcart);
	      mv.addObject("size",productlist.size());
	      mv.addObject("mileage", mileage);
	      mv.addObject("quantity", quantity);
	      mv.addObject("grademileagerate",grademileagerateStr);
	      mv.addObject("membertotalmileage",membertotalmileage);
	      mv.addObject("productimagemain",productimage.getProductimagemain());
	      mv.setViewName("redirect:cart.do");
		return mv;
	}
}