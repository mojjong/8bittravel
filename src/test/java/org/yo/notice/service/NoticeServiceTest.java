package org.yo.notice.service;
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
public class NoticeServiceTest {

	private Logger logger = Logger.getLogger(NoticeServiceTest.class);
	
	@Inject
	NoticeService service;
	
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		
		
		
		//logger.info(guidemapper.getTime());
	}


}
