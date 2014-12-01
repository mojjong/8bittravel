package org.yo.web;


import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
@ContextConfiguration(locations = {"file:src/main/**/*-context.xml"})
public class GuideBbsControllerTest {
	@Autowired
    private WebApplicationContext wac;

    private MockMvc mockMvc;
    
    private static Logger logger = LoggerFactory.getLogger("GuideBbsControllerTest");
	@Before
	public void setUp() throws Exception {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
	}

		//가이드 리스트 테스트
		@Test
		public void guideList() throws Exception{
			logger.info(this.mockMvc.toString());	
			MvcResult result = mockMvc.perform(get("/bbs/guide/list")
					.param("no","69"))
					.andReturn();
			logger.info(result.getModelAndView().getModelMap().toString());
		}
	
}
