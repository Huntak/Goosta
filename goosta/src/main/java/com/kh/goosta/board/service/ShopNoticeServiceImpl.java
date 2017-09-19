package com.kh.goosta.board.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.goosta.board.dao.ShopNoticeDao;
import com.kh.goosta.board.vo.ShopNoticeVo;

@Service("shopNoticeService")
public class ShopNoticeServiceImpl implements ShopNoticeService{
	
	@Resource(name="shopNoticeDao")
	private ShopNoticeDao shopNoticeDao;
	
	//공지사항 전체 조회
	public List<ShopNoticeVo> selectShopNoticeAll(HashMap map){
		return shopNoticeDao.selectShopNoticeAll(map);
	}
	
	//공지사항 총게시물수 조회
	@Override
	public int shopNoticeCount() {
		return shopNoticeDao.shopNoticeCount();
	}

	//공지사항 검색 게시물수 조회
	@Override
	public int shopNoticeCountSearch(String keyword) {
		return shopNoticeDao.shopNoticeCountSearch(keyword);
}
	//공지사항 검색한 게시물 조회
	@Override
	public List<ShopNoticeVo> shopNoticeListSearch(HashMap<String, Object> map) {
		return shopNoticeDao.shopNoticeListSearch(map);
	}
	
	//customer 에 출력할 공지사항 조회
	@Override
	public List<ShopNoticeVo> selectShopNoticeAll2() {
		return shopNoticeDao.selectShopNoticeAll2();
	}

	//공지사항 상세보기
	@Override
	public ShopNoticeVo shopNoticeDetail(int boardno) {
		return shopNoticeDao.shopNoticeDetail(boardno);
	}
	
	//공지사항 글 등록
	@Override
	public int insertShopNotice(ShopNoticeVo snv) {
		if(snv.getBoardimage1() != null){
			//이미지 첨부파일 있을때
			System.out.println("있다 : " + snv.getBoardimage1());
			return shopNoticeDao.insertShopNotice(snv);
		}else{
			//이미지 첨부파일 없을때
			System.out.println("없다 : " + snv.getBoardimage1());
			return shopNoticeDao.insertShopNotice2(snv);
		}
		
		
		
	}

	@Override
	public int insertShopNoticeImage(String boardimage1) {
		return shopNoticeDao.insertShopNoticeImage(boardimage1);
	}

	@Override
	public int shopNoticeUpdate(ShopNoticeVo snv) {
		return shopNoticeDao.shopNoticeUpdate(snv);
	}
}
