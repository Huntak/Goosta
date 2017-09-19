package com.kh.goosta.manager.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goosta.manager.dao.PlusDao;
import com.kh.goosta.manager.vo.PlusVO;


@Service("pSvs")
public class PlusServiceImpl implements PlusService {

	@Autowired
	private PlusDao pDao;

	@Override
	public List showPlusList(HashMap map) {
		return (List<PlusVO>)pDao.showPlusList(map);
	}

	@Override
	public PlusVO showPlusListPop(int plusid) {
		return (PlusVO)pDao.showPlusListPop(plusid);
	}

	@Override
	public List<PlusVO> plusManager() {
		return (List<PlusVO>)pDao.plusManager();
	}

	@Override
	public void plusModify(HashMap map) {
		pDao.plusModify(map);
	}

	@Override
	public void plusDelete(int plusno) {
		pDao.plusDelete(plusno);
	}

	@Override
	public void newPlus(HashMap map) {
		pDao.newPlus(map);		
	}

}
