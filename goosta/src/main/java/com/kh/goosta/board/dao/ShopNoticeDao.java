package com.kh.goosta.board.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.board.vo.ShopNoticeVo;

@Repository("shopNoticeDao")
public class ShopNoticeDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	//공지사항 전체 조회
	public List<ShopNoticeVo> selectShopNoticeAll(HashMap map) {
		return (List<ShopNoticeVo>) sqlSession.selectList("shopNotice.selectShopNoticeAll", map);
	}
	//공지사항 게시물 수 조회
	public int shopNoticeCount() {
		return (Integer) sqlSession.selectOne("shopNotice.shopNoticeCount");
	}
	//공지사항 검색한 게시물 수 조회
	public int shopNoticeCountSearch(String keyword) {
		return (Integer) sqlSession.selectOne("shopNotice.shopNoticeCountSearch", keyword);
	}
	//공지사항 검색한 게시물 조회
	public List<ShopNoticeVo> shopNoticeListSearch(HashMap<String, Object> map) {
		return (List<ShopNoticeVo>) sqlSession.selectList("shopNotice.shopNoticeListSearch", map);
	}
	//공지사항 게시물 8개만 조회
	public List<ShopNoticeVo> selectShopNoticeAll2() {
		return (List<ShopNoticeVo>) sqlSession.selectList("shopNotice.selectShopNoticeAll2");
	}
	//공지사항 상세보기
	public ShopNoticeVo shopNoticeDetail(int boardno) {
				int result = sqlSession.update("shopNotice.shopNoticeReadCount", boardno);
		return (ShopNoticeVo) sqlSession.selectOne("shopNotice.shopNoticeDetail", boardno);
	}

	//공지사항 글 등록 (첨부파일O)
	public int insertShopNotice(ShopNoticeVo snv) {
		return (int) sqlSession.insert("shopNotice.insertShopNotice", snv);
	}
	
	//공지사항 글 등록 (첨부파일X)
	public int insertShopNotice2(ShopNoticeVo snv) {
		return (int) sqlSession.insert("shopNotice.insertShopNotice2", snv);
	}
	//이미지 테이블 등록
	public int insertShopNoticeImage(String boardimage1) {
		return (int) sqlSession.insert("shopNotice.insertShopNoticeImage", boardimage1);
	}
	//공지사항 수정
	public int shopNoticeUpdate(ShopNoticeVo snv) {
		return (int) sqlSession.update("shopNotice.shopNoticeUpdate", snv);
	}

}
