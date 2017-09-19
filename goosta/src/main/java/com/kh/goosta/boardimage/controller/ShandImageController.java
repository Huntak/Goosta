package com.kh.goosta.boardimage.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.kh.goosta.boardimage.service.ShandImageService;

@Controller
public class ShandImageController {
	
	@Resource(name="shandImageService")
	private ShandImageService shandImageService;

}
