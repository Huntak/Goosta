package com.kh.goosta.manager.dao;

import java.util.HashMap;
import java.util.List;

import javax.swing.plaf.synth.SynthSpinnerUI;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.manager.vo.PlusVO;

@Repository("pDao")
public class PlusDao {
	
	public PlusDao(){}
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List showPlusList(HashMap map) {
		return (List<PlusVO>)sqlSession.selectList("plus.showPlusList",map);
	}

	public PlusVO showPlusListPop(int plusid) {
		return (PlusVO)sqlSession.selectOne("plus.showPlusListPop",plusid);
	}

	public List<PlusVO> plusManager() {
		return (List<PlusVO>)sqlSession.selectList("plus.plusManager");
	}

	public void plusModify(HashMap map) {
		sqlSession.update("plus.plusModify",map);		
	}

	public void plusDelete(int plusno) {
		sqlSession.delete("plus.plusDelete",plusno);		
	}

	public void newPlus(HashMap map) {
		sqlSession.insert("plus.newPlus",map);		
	}
}
