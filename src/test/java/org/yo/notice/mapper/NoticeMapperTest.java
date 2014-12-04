package org.yo.notice.mapper;



import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.yo.notice.vo.NoticeVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
      locations = {"file:src/main/**/*-context.xml"})
public class NoticeMapperTest {

   private Logger logger = Logger.getLogger(NoticeMapperTest.class);
   
   @Inject
   NoticeMapper mapper;
   
   @Test
   public void test() {
      
//	  List<NoticeVO> list = mapper.list(1); 
	  NoticeVO vo = new NoticeVO(); 
	  
	  
	  
	  mapper.delete(1049101);
	  logger.info(mapper.read(1049101));
	
	  
	   
	   
   } 
   
}
