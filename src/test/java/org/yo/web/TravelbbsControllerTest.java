package org.yo.web;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class TravelbbsControllerTest {

	@Autowired
    private WebApplicationContext wac;

    private MockMvc mockMvc;
    
    private static Logger logger = Logger.getLogger("TravelbbsControllerTest");

    @Before
    public void setup() {
        this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
    }
	
	
	@Test
	public void getListTest() throws Exception{
		logger.info(this.mockMvc.toString());
		
		MvcResult result = mockMvc.perform(get("/bbs/travelbbs/list")
				.param("page", "1"))
		.andExpect(status().isOk())
		.andReturn();
		
		logger.info(result.getModelAndView().getModelMap());
	}
	
	@Test
	public void createTest() throws Exception{
		logger.info(this.mockMvc.toString());
		//title, content, startdate, enddate, teammember, cost, transport, memo, region, userid, themeno
		MvcResult result = mockMvc.perform(post("/bbs/travelbbs/write")
				.param("title", "여행 스케줄 짜주세여~").param("content", "아무데나 좋은곳 추천좀 해주세여").param("startdate", "141210")
				.param("enddate", "141213").param("teammember", "2").param("cost", "50000").param("transport", "기차").param("memo", "맛집 위주 스케줄 원해요")
				.param("region", "전주").param("userid", "user00").param("themeno", "21"))
		.andExpect(status().isOk())
		.andReturn();
		
		logger.info(result.getModelAndView().getModelMap());
	}
	
	
	@Test
	public void read() throws Exception{
		logger.info(this.mockMvc.toString());
		
		MvcResult result = mockMvc.perform(get("/bbs/travelbbs/read")
				.param("no", "86"))
		.andExpect(status().isOk())
		.andReturn();
		
		logger.info(result.getModelAndView().getModel());
	}
	
	@Test
	public void update() throws Exception{
		logger.info(this.mockMvc.toString());
		
		MvcResult result = mockMvc.perform(post("/bbs/travelbbs/update")
				.param("title", "여행 스케줄 짜주세여~").param("content", "아무데나 좋은곳 추천좀 해주세여").param("startdate", "141210")
				.param("enddate", "141213").param("teammember", "2").param("cost", "50000").param("transport", "기차").param("memo", "맛집 위주 스케줄 원해요")
				.param("region", "전주").param("userid", "user00").param("themeno", "21").param("no", "91"))
		.andExpect(status().isOk())
		.andReturn();
		
		logger.info(result.getModelAndView().getModel());
	}
	
	
	@Test
	public void delete() throws Exception{
		logger.info(this.mockMvc.toString());
		
		MvcResult result = mockMvc.perform(get("/bbs/travelbbs/delete")
				.param("no", "90"))
		.andExpect(status().isOk())
		.andReturn();
		
		logger.info(result.getModelAndView().getModel());
	}
	

}
