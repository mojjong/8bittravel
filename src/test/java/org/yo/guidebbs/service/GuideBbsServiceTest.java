package org.yo.guidebbs.service;
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
public class GuideBbsServiceTest {

	private Logger logger = Logger.getLogger(GuideBbsServiceTest.class);
	
	@Inject
	GuideBbsService service;
	
	@Before
	public void setUp() throws Exception {
	}

	/*@Test
	public void test() {
		logger.info(service.glist(69));
		
		//logger.info(guidemapper.getTime());
	}*/


}
