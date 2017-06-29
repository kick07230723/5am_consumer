package org.cg.persistence;

import java.util.List;

import org.cg.domain.Criteria;
import org.cg.domain.CusAnswerVO;
import org.cg.domain.CusQuestionVO;

public interface QnaDAO {
	
//  question
	
	public List<CusQuestionVO> getQList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public CusQuestionVO qReadOne(CusQuestionVO vo);
	
	public void qUpdate(CusQuestionVO vo);
	
	public void qDelete(CusQuestionVO vo);
	
	public void qInsert(CusQuestionVO vo);
	
	public String gettime();
	
//	answer
	
	public List<CusAnswerVO> getAList(CusQuestionVO vo);
	
	public void aInsert(CusAnswerVO vo);
	
	public void aDelete(CusAnswerVO vo);
	
	public void aUpdate(CusAnswerVO vo);
	
	

	
}
