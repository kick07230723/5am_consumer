package org.cg.persistence;

import java.util.HashMap;
import java.util.List;

import org.cg.domain.StoreVO;

public interface StoreDAO {

	public List<StoreVO> getlist(StoreVO vo,Integer page);

	public List<StoreVO> getadlist(Integer page);
	
	public List<StoreVO> categetadlist(HashMap<String, String> map);
	
	public StoreVO getDetail(String sid);
}
