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
	//일차별 Guideregion 목록
	public List<GuideBbsVO> glist(int gpno){
		return mapper.glist(gpno);
	}
	//사용자글에 달릴 가이드 제목
	public List<GuideBbsVO> gulist(int travelno){
		return mapper.gulist(travelno);
	}
	
	//Guideregion 추가
	public void placeAdd(GuideBbsVO vo){
		 mapper.placeAdd(vo);		  
	}
	
	//Guideregion 삭제
	public void placeDel(Integer no){
		System.out.println("service : " + no);
		mapper.placeDel(no);
	}
	
	//Guideregion 수정
	public void placeModi(GuideBbsVO vo){
		logger.info("여기와? " + vo.toString());
		System.out.println("여기와??");
		mapper.placeModi(vo);
	}
	
	//GuideBbs 입력
	public void guideBbsinsert(GuideBbsVO vo){
		mapper.guideBbsInsert(vo);
	}
}
