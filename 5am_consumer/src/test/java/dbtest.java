

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class dbtest {
	private static final Logger logger = Logger.getLogger(dbtest.class);

	
	@Inject
	SqlSessionTemplate sess;



	@Test
	public void acrudTest(){
		
		
	}

	@Test
	public void qInsertTest(){
	
		sess.selectOne("org.gettime");
		}
		
	
	
	
}