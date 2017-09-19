package com.kh.goosta.boardimage.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("shandImageDao")
public class ShandImageDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertShandImage(HashMap map) {
		
		if(map.get("boardimage2") == null){
			return (int) sqlSession.insert("shandimage.insertShandImage1", map);
		}else if(map.get("boardimage3") == null){
			return (int) sqlSession.insert("shandimage.insertShandImage2", map);
		}else if(map.get("boardimage4")== null){
			return (int) sqlSession.insert("shandimage.insertShandImage3", map);
		}else if(map.get("boardimage5") == null){
			return (int) sqlSession.insert("shandimage.insertShandImage4", map);
		}else{
			return (int) sqlSession.insert("shandimage.insertShandImage5", map);
		}
	}
}
