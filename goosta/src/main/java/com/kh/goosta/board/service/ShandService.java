package com.kh.goosta.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kh.goosta.board.vo.ShandVo;

public interface ShandService {

	List<ShandVo> selectAllShand();

	ShandVo ShandDetail(int boardno);

	int deleteShand(int boardno);

	int updateShandContent(ShandVo shand);

	void insertShand(ShandVo shand);

	void salesComplete(int boardno);

	void insertShand3(ShandVo shand);

	void upShandCount(int boardno);


}
