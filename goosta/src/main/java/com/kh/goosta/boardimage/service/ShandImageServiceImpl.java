package com.kh.goosta.boardimage.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.goosta.boardimage.dao.ShandImageDao;


@Service("shandImageService")
public class ShandImageServiceImpl implements ShandImageService {
	
	@Resource(name="shandImageDao")
	private ShandImageDao shandImageDao;

	@Override
	public int insertShandImage(HashMap map) {
		return shandImageDao.insertShandImage(map);
	}

}
