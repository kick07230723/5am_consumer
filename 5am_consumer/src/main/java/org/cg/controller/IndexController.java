package org.cg.controller;

import java.util.List;

import org.cg.domain.StoreVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/index")
public class IndexController {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

	
	@GetMapping
	public void getIndex()throws Exception{

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
		
		
		
		return null;
		
	}

	
}