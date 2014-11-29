package org.yo.travelbbs.mapper;


import java.sql.Date;
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
	public void getListTest() {
		
		List<TravelbbsVO> list = mapper.getList(1);
		
		logger.info(list);
		
	}
	
	@Test
	public void createTest(){
		//title, content, startdate, enddate, teammember, cost, transport, memo, region, userid, themeno
		TravelbbsVO vo = new TravelbbsVO();
		
		vo.setTitle("테스트제목..");
		vo.setContent("테스트내용..");
		vo.setStartdate("20141206");
		vo.setEnddate("20141210");
		vo.setTeammember(2);
		vo.setCost(50000);
		vo.setTransport("기차");
		vo.setMemo("테스트메모..");
		vo.setRegion("부산");
		vo.setUserid("user00");
		vo.setThemeno(20);
		
		logger.info(vo);
		
		mapper.create(vo);
	}
	
	
	@Test
	public void read() {
		
		logger.info(mapper.read(86).toString());
		
	}
	
	@Test
	public void delete(){
		
		mapper.delete(91);
		
	}
	

}
