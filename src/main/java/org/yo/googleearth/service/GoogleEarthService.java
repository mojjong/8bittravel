package org.yo.googleearth.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.yo.googleearth.mapper.GoogleEarthMapper;
import org.yo.googleearth.vo.GoogleEarthVO;
import org.yo.web.GoogleEarthController;
@Service("googleEarthService")
public class GoogleEarthService {
	
	  private static final Logger logger = LoggerFactory
		         .getLogger(GoogleEarthController.class);
		   
	
	@Inject
	GoogleEarthMapper mapper;
	
	public List<GoogleEarthVO> getTime(){
		
		List<GoogleEarthVO> gdate = mapper.getTime();
		
		logger.info("서비스"+gdate); 
		
		return gdate;
	}

}
