package com.kh.goosta.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.goosta.board.dao.ShandDao;
import com.kh.goosta.board.vo.ShandVo;

@Service(value="shandService")
public class ShandServiceImpl implements ShandService {
	
	@Resource(name="shandDao")
		private ShandDao shandDao;

		@Override
		public List<ShandVo> selectAllShand() {
			return shandDao.selectAllShand();
		}

		@Override
		public ShandVo ShandDetail(int boardno) {
			return shandDao.ShandDetail(boardno);
		}

		@Override
		public int deleteShand(int boardno) {
			return shandDao.deleteShand(boardno);
		}

		@Override
		public int updateShandContent(ShandVo shand) {
			return shandDao.updateShandContent(shand);
		}

		@Override
		public void insertShand(ShandVo shand) {
			 shandDao.insertShand(shand);
		}

		@Override
		public void salesComplete(int boardno) {
			shandDao.salesComplete(boardno);
		}

		@Override
		public void insertShand3(ShandVo shand) {
			shandDao.insertShand3(shand);
			
		}

		@Override
		public void upShandCount(int boardno) {
			shandDao.upShandCount(boardno);
			
		}

}
