package com.kh.goosta.mileage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.mileage.vo.MileageVo;

@Repository(value="MileageDao")
public class MileageDao {

	@Autowired
	private SqlSession sqlSession;
	
	public MileageVo selectMileageVo(MileageVo mi){
		sqlSession.selectOne("mileage",mi);
		return null;
	}

	public void insertmilevo(MileageVo milevo) {
		sqlSession.insert("mileage.insertmileage",milevo);
		
	}

	@SuppressWarnings("unchecked")
	public List<MileageVo> myMileage(String memberid) {
		// TODO Auto-generated method stub
		return (List<MileageVo>)sqlSession.selectList("mileage.myMileage",memberid);
	}
	

}
