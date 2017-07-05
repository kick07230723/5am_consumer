package org.cg.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.cg.domain.StoreVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDAOImpl implements StoreDAO {

	@Inject
	private SqlSessionTemplate sess;

	private static final String namespace = "org.cg.persistence.StoreDAO";

	
	@Override
	public List<StoreVO> getlist(StoreVO vo,Integer page) {
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("vo", vo);
		map.put("page", page);
		
		return sess.selectList(namespace+".getlist",map);
	}


	@Override
	public List<StoreVO> getadlist(Integer page) {
		
		return sess.selectList(namespace+".getadlist",page);
	}


	@Override
	public List<StoreVO> categetadlist(HashMap<String, String> map) {
		
		return sess.selectList(namespace+".categetadlist", map);
	}

	
	
}
