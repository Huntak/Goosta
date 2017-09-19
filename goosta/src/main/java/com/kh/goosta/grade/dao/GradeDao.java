package com.kh.goosta.grade.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("gradeDao")
public class GradeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public double selectMileageRate(String memberid) {
		return (Double) sqlSession.selectOne("gradeMapper.selectMileageRate", memberid);
	}
}
