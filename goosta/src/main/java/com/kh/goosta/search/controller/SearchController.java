package com.kh.goosta.search.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.CookieGenerator;

import com.kh.goosta.creview.service.CreviewService;
import com.kh.goosta.product.vo.ProductVO;
import com.kh.goosta.search.service.SearchService;

@Controller
@SessionAttributes("searchtext")
public class SearchController {
	
	@Autowired
	private SearchService sSvc;

	@RequestMapping(value = "search.do")
	public String searchView(){
		
		return "search/searchView";
	}
	@RequestMapping(value="/TextSearch.do", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView TextSearchView(@RequestParam(value="Search") String text, HttpSession session) throws Exception{
		//session.setAttribute("searchtext", text);
		ModelAndView mv = new ModelAndView("search/searchView");
		List<ProductVO> list = sSvc.TextSearchView(text);
		mv.addObject("list", list);
		mv.addObject("searchtext",text);
		return mv;
		
	}
	@RequestMapping(value = "/HeaderSearch.do" , method=RequestMethod.POST)
	@ResponseBody
	public List<ProductVO> HeaderSearchView(@RequestParam(value = "searchtext" ,required=false) String searchtext) throws Exception{
		List<ProductVO> list = sSvc.HeaderSearchView(searchtext);
		return list;
		}
	
	@RequestMapping(value = "/SortProduct.do" , method=RequestMethod.POST)
	@ResponseBody
	public List<ProductVO> SortProduct(
			@RequestParam(value="sizes") String sizes,
			@RequestParam(value="color") String color,
			@RequestParam(value="brand") String brand,
			@RequestParam(value="category") String category,
			@RequestParam(value="select") String select,
			@RequestParam(value = "searchtext" ,required=false) String searchtext, HttpSession session) throws Exception{
		String trimSizes = sizes.replaceAll("\\p{Z}", "");
		String trimColor = color.replaceAll("\\p{Z}", "");
		String trimBrand = brand.replaceAll("\\p{Z}", "");
		String trimCategory = category.replaceAll("\\p{Z}", "");
		System.out.println(select);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("searchtext", searchtext);
		map.put("sizes", trimSizes);
		map.put("color", trimColor);
		map.put("brand", trimBrand);
		map.put("category", trimCategory); 
		List<ProductVO> list = null;
		
		System.out.println(searchtext);
		
		if(select.equals("desc")){
			 list = sSvc.SortByHighPrice(map);
		} else if(select.equals("asc")){
			 list = sSvc.SortByLowPrice(map);
		} else if(select.equals("best")){
			 list = sSvc.SortByBestProduct(map);
		} else if(select.equals("new")){
			 list = sSvc.SortByNewProduct(map);
		}
		System.out.println(list.size());
		return list;
		}
	
	@RequestMapping(value = "/DetailSearch.do" , method=RequestMethod.POST)
	@ResponseBody
	public List<ProductVO> DetailSearch(
			@RequestParam(value="sizes") String sizes,
			@RequestParam(value="color") String color,
			@RequestParam(value="brand") String brand,
			@RequestParam(value="category") String category,
//			@RequestParam(value = "searchtext" ,required=false) String searchtext, 
			HttpSession session) throws Exception{
		session.removeAttribute("searchtext");
		session.setAttribute("searchtext", "");
		String searchtext = "";
		String trimSizes = sizes.replaceAll("\\p{Z}", "");
		String trimColor = color.replaceAll("\\p{Z}", "");
		String trimBrand = brand.replaceAll("\\p{Z}", "");
		String trimCategory = category.replaceAll("\\p{Z}", "");
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("searchtext", searchtext);
		map.put("sizes", trimSizes);
		map.put("color", trimColor);
		map.put("brand", trimBrand);
		map.put("category", trimCategory);
		List<ProductVO> list = sSvc.DetailSearch(map);
		System.out.println(list.size());
		
		return list;
		}
	@RequestMapping(value = "/PreviousProductList.do" , method=RequestMethod.POST)
	@ResponseBody
	public List<ProductVO> PreviousProductList(
	@RequestParam(value = "productname" ,required=false) String productname,
	HttpServletResponse response, HttpServletRequest request) throws Exception{
		 Cookie[] cookies = request.getCookies() ;
		 List list = new ArrayList();
		 HashMap map = new HashMap();
		    if(cookies != null){
		        for(int i=0; i < cookies.length; i++){
		            Cookie c = cookies[i] ;
		            // 저장된 쿠키 이름을 가져온다
		            String cName = c.getName();
		            // 쿠키값을 가져온다
		            String cValue = URLDecoder.decode(c.getValue(),"utf-8") ;
		            System.out.println("===========쿠키==========");
		            System.out.println(cName +" : " +cValue);
		            list.add(cValue);
		        }
		    }
		    map.put("list", list);
		    List<ProductVO> previous = sSvc.previousProductList(map);
		    System.out.println("총사이즈 : "+previous.size());
		return previous;
		}
}
