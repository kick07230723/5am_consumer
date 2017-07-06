package org.cg.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.cg.domain.StoreVO;
import org.cg.persistence.StoreDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/category")
public class CategoryController {

	
	private static final Logger logger= LoggerFactory.getLogger(CategoryController.class);
	@Inject
	StoreDAO dao;
	
	@GetMapping("/list")
	public void categoryget(@RequestParam("cate")String cate,Model model){
		
		model.addAttribute("cate", cate);
		
		
	}
	

	@PostMapping("/list")
	@ResponseBody
	public List<StoreVO> getKitchen(@RequestParam("scategory")String scategory,@RequestParam("page")String page)throws Exception{

		logger.info("list 들어와써용 ");
		
		logger.info("scategory: "+scategory);
		logger.info("page: "+page);		
		
		List<StoreVO> list = new ArrayList<>();		
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("scategory", scategory);
		map.put("page", page);
		
		list = dao.categetadlist(map);
		
		return list;
		
	}
	
	@RequestMapping(value = "getadlist   ", method = RequestMethod.POST)
	public @ResponseBody List<StoreVO> sendadlist(@RequestParam("lat") String lat, @RequestParam("lng") String lng,@RequestParam("page") Integer page){

		logger.info("zzzzzzzzzzzzzzzdddd");
		logger.info("..."+lat+"...");
		logger.info(lng);
		logger.info(""+page);
		
		
		if(lat.equals("0")){
			logger.info("lat 0일떄");
			
			List<StoreVO> list = dao.getadlist(page);
			
			return list;
		}else{
			logger.info("lat 좌표 들왔을떄");
			List<StoreVO> list= new ArrayList<>();
			StoreVO vo=new StoreVO(); 
			vo.setLat(lat);
			vo.setLng(lng);
			
			list = dao.getlist(vo,page);
			logger.info(list.toString());
			
			
			return list;
		}
		
				 
		
		
	}
	
}
