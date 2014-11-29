package org.yo.travelbbs.service;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.yo.travelbbs.mapper.TravelbbsMapper;
import org.yo.travelbbs.mapper.TravelbbsMapperTest;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class TravelbbsServiceTest {

	private Logger logger = Logger.getLogger(TravelbbsServiceTest.class);
	
	@Inject
	TravelbbsService service;
	
	@Test
	public void test() {
		
		logger.info(service.getList(1));
		
	}

}
