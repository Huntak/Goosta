package com.kh.goosta.manager.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.swing.plaf.synth.SynthSpinnerUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.manager.service.PlusService;
import com.kh.goosta.manager.vo.PlusVO;

@Controller
public class PlusController {
	
	@Autowired private PlusService pSvc;
	
	@RequestMapping("plusManager.do")
	public ModelAndView plusManager(
			ModelAndView model){
		List<PlusVO> list = (List<PlusVO>) pSvc.plusManager();
		model.addObject("list", list);
		model.setViewName("manager/plusManager");
		return model;
	}
	@RequestMapping("showPlusList.do")
	@ResponseBody
	public List showPlusList(
			Model model,
			@RequestParam String keyword,
			@RequestParam String selected
			){
		HashMap map = new HashMap();
		map.put("keyword", keyword);
		map.put("selected", selected);
		List list =(List <PlusVO> )pSvc.showPlusList(map);
		System.out.println("출력되냐?"+list.toString());
		model.addAttribute("list", list);
		return list;
	}
	@RequestMapping("showPlusListPop.do")
	public ModelAndView showPlusListPop(
			ModelAndView model,
			@RequestParam int plusid
			){
		PlusVO PlusVO = pSvc.showPlusListPop(plusid);
		System.out.println("출력되냐?"+PlusVO.toString());
		model.addObject("PlusVO", PlusVO);
		model.setViewName("manager/plusView");
		return model;
	}
	@RequestMapping("plusDelete.do")
	@ResponseBody
	public List plusDelete(
		ModelAndView mv,
		@RequestParam(value="plusno") int plusno){
		pSvc.plusDelete(plusno);
		List<PlusVO> list = (List<PlusVO>) pSvc.plusManager();
		return list;
	}
	@RequestMapping("plusModify.do")
	@ResponseBody
	public ModelAndView plusModify(
			ModelAndView mv,
			@RequestParam(value="pno") int plusid,
			@RequestParam(value="pid") int productid,
			@RequestParam(value="pquan") int plusquantity,
			@RequestParam(value="ptot") int plustotal,
			@RequestParam(value="pp") int plusprice,
			@RequestParam(value="pd") Date plusdate
			){
		HashMap map = new HashMap();
		map.put("plusid", plusid);
		map.put("productid", productid);
		map.put("plusquantity", plusquantity);
		map.put("plustotal", plustotal);
		map.put("plusprice", plusprice);
		map.put("plusdate", plusdate);
		pSvc.plusModify(map);
		PlusVO PlusVO = pSvc.showPlusListPop(plusid);
		mv.addObject("PlusVO",PlusVO);
		mv.setViewName("manager/plusView");
		return mv;
	}
	
	@RequestMapping("newPlus.do")
	@ResponseBody
	public ModelAndView newPlus(
			ModelAndView mv,
			@RequestParam(value="pid") int productid,
			@RequestParam(value="pquan") int plusquantity,
			@RequestParam(value="ptot") int plustotal,
			@RequestParam(value="pp") int plusprice
			){
		HashMap map = new HashMap();
		map.put("productid", productid);
		map.put("plusquantity", plusquantity);
		map.put("plustotal", plustotal);
		map.put("plusprice", plusprice);
		pSvc.newPlus(map);
		mv.setViewName("manager/newPlus");
		return mv;
	}
	@RequestMapping("newPlusView.do")
	public String newPlusView(){
		return "manager/newPlus";
	}
}
