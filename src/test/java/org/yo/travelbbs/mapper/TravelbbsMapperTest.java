package org.yo.travelbbs.mapper;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.yo.travelbbs.vo.TravelbbsVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class TravelbbsMapperTest {

	private Logger logger = Logger.getLogger(TravelbbsMapperTest.class);
	
	@Inject
	TravelbbsMapper mapper;
	
	@Test
	public void test() {
		
		List<TravelbbsVO> list = mapper.getList(1);
		
		logger.info(list);
		
	}
	
	

}
