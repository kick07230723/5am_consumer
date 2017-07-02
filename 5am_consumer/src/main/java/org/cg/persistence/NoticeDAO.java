package org.cg.persistence;

import java.util.List;

import org.cg.domain.NoticeVO;

public interface NoticeDAO {
	
	public void create(NoticeVO vo);
	
	public List<NoticeVO> getList(int page); 
	
	

}
