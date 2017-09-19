package com.kh.goosta.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.board.vo.ShandVo;

@Repository(value="shandDao")
public class ShandDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	//중고거래 게시판 전체 조회
	public List<ShandVo> selectAllShand() {
		return (List<ShandVo>) sqlSession.selectList("shand.selectAllShand");
	}

	//중고거래 게시판 상세보기
	public ShandVo ShandDetail(int boardno) {
		return (ShandVo) sqlSession.selectOne("shand.shandDetail", boardno);
	}

	//중고거래 게시판 글삭제
	public int deleteShand(int boardno) {
		return (int) sqlSession.update("shand.deleteShand", boardno);
	}

	////중고거래 게시판 글수정
	public int updateShandContent(ShandVo shand) {
					 sqlSession.update("shand.updateShand2", shand);//shand 테이블
		return (int) sqlSession.update("shand.updateShand", shand);//board 테이블
	}
	
	//중고거래 게시판 글 등록
	public void insertShand(ShandVo shand) {
		sqlSession.insert("shand.insertShand", shand);
		sqlSession.insert("shand.insertShand2", shand);
	}

	public void salesComplete(int boardno) {
		sqlSession.update("shand.salesComplete", boardno);
		
	}

	public void insertShand3(ShandVo shand) {
		sqlSession.insert("shand.insertShand3", shand);
		sqlSession.insert("shand.insertShand2", shand);
		
	}

	public void upShandCount(int boardno) {
		sqlSession.update("shand.upSahandCount", boardno);
		
	}

}
