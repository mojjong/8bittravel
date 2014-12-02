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
	
	public List<GuideBbsVO> glist(int gpno){
		return mapper.glist(gpno);
	}
	//장소추가
	public void placeAdd(GuideBbsVO vo){
		 mapper.placeAdd(vo);		  
	}
	
	//장소 삭제
	public void placeDel(Integer no){
		System.out.println("service : " + no);
		mapper.placeDel(no);
	}
	
	public void placeModi(GuideBbsVO vo){
		logger.info("여기와? " + vo.toString());
		System.out.println("여기와??");
		mapper.placeModi(vo);
	}
}
