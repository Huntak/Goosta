package com.kh.goosta.board.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goosta.board.vo.ShopNoticeVo;
import com.kh.goosta.faq.vo.FaqVo;

public interface ShopNoticeService {

	List<ShopNoticeVo> selectShopNoticeAll(HashMap map);

	int shopNoticeCount();

	int shopNoticeCountSearch(String keyword);

	List<ShopNoticeVo> shopNoticeListSearch(HashMap<String, Object> map);

	List<ShopNoticeVo> selectShopNoticeAll2();

	ShopNoticeVo shopNoticeDetail(int boardno);

	int insertShopNotice(ShopNoticeVo snv);

	int insertShopNoticeImage(String boardimage1);

	int shopNoticeUpdate(ShopNoticeVo snv);

}
