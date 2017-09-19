package com.kh.goosta.product.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.board.service.SReviewService;
import com.kh.goosta.board.vo.SReviewVO;
import com.kh.goosta.grade.service.GradeService;
import com.kh.goosta.member.vo.Member;
import com.kh.goosta.product.service.ProductImageService;
import com.kh.goosta.product.service.ProductService;
import com.kh.goosta.product.vo.ProductVO;
import com.kh.goosta.product.vo.ProductImageVO;


@Controller
public class DetailController {
	
	@Autowired
	private ProductImageService pis;
	
	@Autowired
	private ProductService ps;
	
	@Autowired
	private SReviewService srs;

	@Autowired
	private GradeService gs;

	@RequestMapping(value = "detail.do")
	public ModelAndView detail(ModelAndView mv, HttpServletRequest request, HttpSession session, HttpServletResponse response) throws UnsupportedEncodingException {
		String productname = request.getParameter("productname");
		
		if (productname.indexOf("_") > 1) {
			productname = productname.replace('_', ' ');
		}
		
		//System.out.println(productname);
		
		double starQuantityRate2 = srs.selectStarQuantityRate(productname);
		
		double starQuantityRate = Double.parseDouble(String.format("%.1f", starQuantityRate2));

		System.out.println(starQuantityRate);
		
		double reviewSizeRate2 = srs.selectReviewSizeRate(productname);
		
		double reviewSizeRate = Double.parseDouble(String.format("%.1f", reviewSizeRate2));

		System.out.println(reviewSizeRate);
		
		double reviewFootRate2 = srs.selectReviewFootRate(productname);
		
		double reviewFootRate = Double.parseDouble(String.format("%.1f", reviewFootRate2));

		System.out.println(reviewFootRate);
		
		double reviewColorRate2 = srs.selectReviewColorRate(productname);
		
		double reviewColorRate = Double.parseDouble(String.format("%.1f", reviewColorRate2));

		System.out.println(reviewColorRate);
		
		double reviewDeliverRate2 = srs.selectReviewDeliverRate(productname);
		
		double reviewDeliverRate = Double.parseDouble(String.format("%.1f", reviewDeliverRate2));

		System.out.println(reviewDeliverRate);
		
		ProductImageVO productimage = pis.selectProductImage(productname);
		
		//System.out.println(productimage);
		
		String productnameShort = productname.substring(0, productname.lastIndexOf(" "));
		
		//System.out.println(productnameShort);
		
		List<String> productsMainImages = pis.selectProductsMainImages(productnameShort);
		
		/*for(int i = 0; i < productsMainImages.size(); i++){
			System.out.println(productsMainImages.get(i));
		}*/
		
		String categorySort = ps.selectCategory(productname);
		
		//System.out.println(categorySort);
		
		String productColor = productname.substring(productname.lastIndexOf(" ") + 1, productname.length());
		
		//System.out.println(productColor);
		
		List<ProductVO> productSizeList = ps.selectProductSize(productname);
		
		for(int i = 0; i < productSizeList.size(); i++){
			System.out.println(productSizeList.get(i));
		}
		
		int productPrice = productSizeList.get(0).getProductprice();
		
		List<SReviewVO> list = srs.selectList(1, 5, "all", "");
		
		for(int i = 0; i < list.size(); i++){
			int productid = list.get(i).getProductid();
			
			ProductVO product = ps.selectProduct(productid);
			list.get(i).setProductsize(product.getProductsize());
		}
		
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		System.out.println(loginUser);
		
		double mileageRate = 0;
		float mileageF = 0;
		int mileage = 0;
		if(loginUser != null){
			mileageRate = gs.selectMileageRate(loginUser.getMemberid());
		
			System.out.println(mileageRate);
			
			mileageF = (float) (productPrice * mileageRate);
			
			System.out.println(mileageF);
			
			mileage = Math.round(mileageF);
			
			System.out.println(mileage);
		}
		
		int mileagePercent = (int) (mileageRate * 100);
		
		int sreviewProductCount = srs.sreviewProductCount(productnameShort);
		
		System.out.println(sreviewProductCount);
		
		/*int ageBand1 = Integer.parseInt(loginUser.getMemberbirth1());
		
		int ageBand = 0;
		if(ageBand1 > 17)
			ageBand = (int)((117 - ageBand1 + 1) / 10) * 10;
		else
			ageBand = (int)((17 - ageBand1 + 1) / 10) * 10;
		
		System.out.println(ageBand);*/
		
		int productid = productSizeList.get(0).getProductid();
		String cookname = String.valueOf(productid);
		Cookie cookie = new Cookie(cookname, URLEncoder.encode(productname, "utf-8"));
		response.addCookie(cookie);
		
		mv.addObject("starQuantityRate", starQuantityRate);
		mv.addObject("reviewSizeRate", reviewSizeRate);
		mv.addObject("reviewFootRate", reviewFootRate);
		mv.addObject("reviewColorRate", reviewColorRate);
		mv.addObject("reviewDeliverRate", reviewDeliverRate);
		mv.addObject("productimage", productimage);
		mv.addObject("productsMainImages", productsMainImages);
		mv.addObject("categorySort", categorySort);
		mv.addObject("productname", productname);
		mv.addObject("productnameShort", productnameShort);
		mv.addObject("productColor", productColor);
		mv.addObject("productSizeList", productSizeList);
		mv.addObject("productPrice", productPrice);
		mv.addObject("mileage", mileage);
		mv.addObject("mileagePercent", mileagePercent);
		mv.addObject("sreviewProductCount", sreviewProductCount);
		/*mv.addObject("ageBand", ageBand);*/
		mv.addObject("list", list);
		
		mv.setViewName("product/detail");
		
		return mv;
	}
	
	@RequestMapping(value = "detailReload.do")
	@ResponseBody
	public List<Object> detailReload(HttpServletRequest request, ArrayList<Object> list) {
		String productMainImage = request.getParameter("productMainImage");
		
		//System.out.println(productMainImage);
		
		List<ProductVO> productSizeList = ps.selectProductList(productMainImage);
		
		/*for(int i = 0; i < productSizeList.size(); i++){
			System.out.println(productSizeList.get(i));
		}*/
		
		String productname = productSizeList.get(0).getProductname();
		
		ProductImageVO productimage = pis.selectProductImage(productname);
		
		//System.out.println(productimage);
		
		System.out.println(productimage);
		System.out.println(productSizeList.get(0).getProductprice());
		System.out.println(productname.substring(productname.lastIndexOf(" ") + 1, productname.length()));
		System.out.println(productSizeList);
		
		list.add(productimage);
		list.add(productSizeList.get(0).getProductprice());
		list.add(productname.substring(productname.lastIndexOf(" ") + 1, productname.length()));
		list.add(productSizeList);
		
	    return list;
	}
	
	@RequestMapping(value = "quantityCheck.do")
	@ResponseBody
	public int quantityCheck(HttpServletRequest request) {
		String productname = request.getParameter("productname");
		String productsizeStr = request.getParameter("productsize");
		int productsize = 0;
		if(productsizeStr != null)
			productsize = Integer.parseInt(productsizeStr);
		
		System.out.println(productname);
		System.out.println(productsize);
		
		int productquantity = ps.selectProductQuantity(productname, productsize);
		
		System.out.println(productquantity);
		
	    return productquantity;
	}
	
	@RequestMapping(value = "sizeChart.do")
	public String sizeChart() {
		return "product/sizeChart";
	}
	
	@RequestMapping(value = "shippingAndReturns.do")
	public String shippingAndReturns() {
		return "product/shippingAndReturns";
	}
	
	@RequestMapping(value = "N.do")
	public String N() {
		return "product/NewFile";
	}
	
}
