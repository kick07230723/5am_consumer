package org.cg.persistence;

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
	public List<StoreVO> getlist(StoreVO vo) {
		
		return sess.selectList(namespace+".getlist",vo);
	}


	@Override
	public List<StoreVO> getadlist() {
		
		return sess.selectList(namespace+".getadlist");
	}

	
}
