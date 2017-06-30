package org.cg.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.cg.domain.StoreVO;
import org.cg.persistence.StoreDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Inject
	StoreDAO dao;
	
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

	
	@GetMapping
	public void getIndex()throws Exception{

	}
	
	@RequestMapping(value = "getadlist", method = RequestMethod.POST)
	public @ResponseBody List<StoreVO> sendadlist(){

				 
		List<StoreVO> list= new ArrayList<>();
			
		
		list=dao.getadlist();
		logger.info(list.toString());
		/*list.forEach(item->logger.info(item));*/
		
		
		return list;
		
	}
	
	
	@GetMapping("/shipping")
	public void getShipping()throws Exception{

	}
	
	
	@GetMapping("/wishlist")
	public void getWishlist()throws Exception{

	}
	@GetMapping("/about")
	public void getAbout()throws Exception{

	}
	
	@PostMapping("/search")
	public @ResponseBody List<StoreVO> searchResult(@RequestParam("lat") String lat,@RequestParam("lng") String lng){
		
		logger.info(lat);
		logger.info(lng);
		
		List<StoreVO> list= new ArrayList<>();
		StoreVO vo=new StoreVO(); 
		vo.setLat(lat);
		vo.setLng(lng);
		
		list=dao.getlist(vo);
		logger.info(list.toString());
		/*list.forEach(item->logger.info(item));*/
		
		
		return list;
		
	}

	
}