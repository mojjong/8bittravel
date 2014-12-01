package org.yo.guidebbs.mapper;
import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class GuideBbsMapperTest {

	private Logger logger = Logger.getLogger(GuideBbsMapperTest.class);
	
	@Inject
	GuideBbsMapper mapper;
	
	@Before
	public void setUp() throws Exception {
	}

	/*@Test
	public void test() {
		logger.info(mapper.glist(69));
		
		//logger.info(guidemapper.getTime());
	}
*/

}
