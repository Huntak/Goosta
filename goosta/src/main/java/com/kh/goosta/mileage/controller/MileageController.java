package com.kh.goosta.mileage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.goosta.mileage.service.MileageService;
import com.kh.goosta.mileage.vo.MileageVo;
import com.kh.goosta.orderandpay.vo.OrderAndPayVo;

@Controller
public class MileageController {

	@Autowired
	private MileageService milesev;
	
	@RequestMapping(value = "finish2.do")
	public MileageVo mileagepage(MileageVo mi){
		
		milesev.insertmilevo(mi);
		
		mi = milesev.selectMil(mi);
		
		return mi;
	}
	
	
}
