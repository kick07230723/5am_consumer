package org.cg.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.cg.domain.NoticeVO;
import org.cg.persistence.NoticeDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	private final static Logger logger = Logger.getLogger(NoticeController.class);
	
	@Inject
	NoticeDAO dao;
	
	
	@GetMapping("/list")
	public void noticeGet(){
		
	}
	
	@PostMapping("/list")
	public @ResponseBody List<NoticeVO> listpost(@RequestParam("page") Integer page){
		
		logger.info("리스크 주가");
		
		logger.info(page);
		
		List<NoticeVO> list= dao.getList(page);
		
		return list;
		
	}
	
	@PostMapping("register")
	public @ResponseBody List<NoticeVO> registerpost(NoticeVO vo){
		
		logger.info("노티스 추가");
		
		logger.info(vo);
		
		dao.create(vo);
		
		List<NoticeVO> list= dao.getList(1);
		
		return list;
				
	}

		
		
}
