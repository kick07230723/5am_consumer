package org.cg.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class IndexController {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

	
	@GetMapping("/index")
	public void getIndex()throws Exception{

	}
	
	@GetMapping("/kitchen")
	public void getKitchen()throws Exception{

	}
	
	@GetMapping("/shipping")
	public void getShipping()throws Exception{

	}
	
	@GetMapping("/login")
	public void getLogin()throws Exception{

	}
	
	@GetMapping("/register")
	public void getRegister()throws Exception{

	}
	@GetMapping("/wishlist")
	public void getWishlist()throws Exception{

	}
	@GetMapping("/about")
	public void getAbout()throws Exception{

	}

	
}