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
	
	public void gplan(GuideBbsVO vo){
		mapper.gplan(vo);
	}
	
	//������ Guideregion ���
	public List<GuideBbsVO> glist(int gpno){
		return mapper.glist(gpno);
	}
	
	//일차별로 리스트 보는것.(사용자)
	public List<GuideBbsVO> daylist(GuideBbsVO vo){
		System.out.println("daylist 매퍼" + vo.toString());
		return mapper.daylist(vo);
	}
	
	public List<GuideBbsVO> grList(GuideBbsVO vo){
		System.out.println("GRList 매퍼" + vo.toString());
		return mapper.grList(vo);
	}
	//
	public List<GuideBbsVO> gulist(GuideBbsVO vo){
		logger.info("service : 여기야 여기!!!" );
		return mapper.gulist(vo);
	}
	
	//Guideregion �߰�
	public void placeAdd(GuideBbsVO vo){
		 mapper.placeAdd(vo);		  
	}
	
	//Guideregion ����
	public void placeDel(Integer grno){
		System.out.println("service : " + grno);
		mapper.placeDel(grno);
	}
	
	//Guideregion ����
	public void placeModi(GuideBbsVO vo){
		logger.info("수정 서비스? " + vo.toString());
		System.out.println("수정?");
		mapper.placeModi(vo);
	}
	
	//GuideBbs �Է�
	public void guideBbsinsert(GuideBbsVO vo){
		mapper.guideBbsInsert(vo);
	}
}
