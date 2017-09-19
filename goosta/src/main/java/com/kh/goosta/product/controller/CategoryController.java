package com.kh.goosta.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.product.service.CategoryService;
import com.kh.goosta.product.vo.CategoryPageVO;
import com.kh.goosta.product.vo.ProductVO;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryService caService;
	
	@RequestMapping(value = "category.do")
	public ModelAndView category(ModelAndView mv
			,@RequestParam(defaultValue="NIKE") String categorybrand
			,@RequestParam(defaultValue="1") int curPage
			,@RequestParam(defaultValue="all") String categorysort
			,@RequestParam(defaultValue="all") String order
			,@RequestParam(defaultValue="all") String orderColumn) {
		//총갯수
		int count = caService.categoryCount(categorybrand,categorysort);
		
		CategoryPageVO pageDao = new CategoryPageVO(count, curPage);
		int start = pageDao.getPageBegin();
		int end = pageDao.getPageEnd();
		
		List<ProductVO> list = caService.selectList(categorybrand,categorysort,order,start,end,orderColumn);
				
		if(order != "all" && orderColumn != "all"){
			mv.addObject("order",order);
			mv.addObject("orderColumn",orderColumn);
		}
		
		mv.addObject("list", list);
		mv.addObject("page",pageDao);
		mv.addObject("count", count);
		mv.setViewName("product/category");
		
		return mv;
	}
	

}
