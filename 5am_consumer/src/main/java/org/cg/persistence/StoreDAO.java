package org.cg.persistence;

import java.util.List;

import org.cg.domain.StoreVO;

public interface StoreDAO {

	public List<StoreVO> getlist(StoreVO vo);

	public List<StoreVO> getadlist();
	
}
