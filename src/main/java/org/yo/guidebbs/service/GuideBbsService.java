package org.yo.guidebbs.service;

import java.util.List;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.yo.guidebbs.mapper.GuideBbsMapper;
import org.yo.guidebbs.vo.GuideBbsVO;



@Service("GuideBbsService")
public class GuideBbsService {	
	private static Logger logger = LoggerFactory.getLogger(GuideBbsService.class);
	
	@Inject
	GuideBbsMapper mapper;
	
	public List<GuideBbsVO> glist(){
		return mapper.glist();
	}
	
	public void placeAdd(GuideBbsVO vo){
		 mapper.placeAdd(vo);
		  
	}

}
