package com.kh.goosta.mileage.service;

import java.util.List;

import com.kh.goosta.mileage.vo.MileageVo;

public interface MileageService {

	void insertmilevo(MileageVo milevo);

	MileageVo selectMil(MileageVo mi);

	List<MileageVo> myMileage(String memberid);

	void insertMileage(MileageVo milevo);

}
