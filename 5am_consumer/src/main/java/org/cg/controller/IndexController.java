package org.cg.controller;




@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Inject
	StoreDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	

	@GetMapping
	public void getIndex()throws Exception{
		
	}

	@RequestMapping(value = "getadli", method = RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> sendadlist(){

		
		logger.info("inininin");
		 
		String a="hello!!";
		
		
		List<String> list = new ArrayList<>();
		
		
		Map<String,Object> map= new HashMap<String,Object>();
		map.put("hello","hello hello");
		map.put("list",list);
		
		ResponseEntity<Map<String, Object>> entity=null;
				
			entity=new ResponseEntity<>(map,HttpStatus.OK);  
		
		
		
		   return entity;		
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
