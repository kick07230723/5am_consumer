package org.cg.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.cg.domain.Criteria;
import org.cg.domain.CusQuestionVO;
import org.cg.domain.PageMaker;
import org.cg.persistence.QnaDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/qna")
public class QnAController {
	
	@Inject
	QnaDAO dao;
	
	private final static Logger logger = Logger.getLogger(QnAController.class);

	@GetMapping("/list")
	public void qnaGet(Criteria cri,Model model){
	
		List<CusQuestionVO> list= new ArrayList<CusQuestionVO>();
		
		PageMaker pageMaker=new PageMaker(cri, dao.getTotal(cri)); 
		logger.info(cri);
		
		String message= dao.gettime();		
		logger.info(message);
		
		list=dao.getQList(cri);
		
		model.addAttribute("list", list);
		model.addAttribute("cri", cri);		
		model.addAttribute("pageMaker", pageMaker);
		
	}
	
	
	@PostMapping("/regi")
	@ResponseBody
	public String regicusQ(CusQuestionVO vo){
		logger.info("regi post...... ");
		logger.info(vo);
		dao.qInsert(vo);
		
		return "success";
	}
	
	
}
