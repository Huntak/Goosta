package com.kh.goosta.grade.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.grade.dao.GradeDao;

@Service("gradeService")
public class GradeServiceImpl implements GradeService{

	@Autowired
	private GradeDao gd;

	@Override
	public double selectMileageRate(String memberid) {
		return gd.selectMileageRate(memberid);
	}
}
