package com.kh.goosta.mileage.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.goosta.mileage.dao.MileageDao;
import com.kh.goosta.mileage.vo.MileageVo;

@Service("MileageService")
public class MileageServiceImpl implements MileageService{
	
	@Resource(name="MileageDao")
	private MileageDao miledao;
	
	public MileageServiceImpl(){}
	
	@Override
	public void insertmilevo(MileageVo milevo){
		miledao.insertmilevo(milevo);
		
	}

	@Override
	public MileageVo selectMil(MileageVo mi) {
			mi = miledao.selectMileageVo(mi);
		return null;
	}

	@Override
	public List<MileageVo> myMileage(String memberid) {
		
		return miledao.myMileage(memberid);
	}
	
	@Override
	public void insertMileage(MileageVo milevo) {
		miledao.insertmilevo(milevo);
		
	}

}
