package com.kh.goosta.manager.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goosta.manager.vo.PlusVO;

public interface PlusService {
	List showPlusList(HashMap map);

	PlusVO showPlusListPop(int plusid);

	List<PlusVO> plusManager();

	void plusModify(HashMap map);

	void plusDelete(int plusno);

	void newPlus(HashMap map);

}
