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
	//������ Guideregion ���
	public List<GuideBbsVO> glist(int gpno){
		return mapper.glist(gpno);
	}
	//����ڱۿ� �޸� ���̵� ����
	public List<GuideBbsVO> gulist(GuideBbsVO vo){
		logger.info("service : " + vo.toString());
		return mapper.gulist(vo.getTravelno());
	}
	
	//Guideregion �߰�
	public void placeAdd(GuideBbsVO vo){
		 mapper.placeAdd(vo);		  
	}
	
	//Guideregion ����
	public void placeDel(Integer no){
		System.out.println("service : " + no);
		mapper.placeDel(no);
	}
	
	//Guideregion ����
	public void placeModi(GuideBbsVO vo){
		logger.info("�����? " + vo.toString());
		System.out.println("�����??");
		mapper.placeModi(vo);
	}
	
	//GuideBbs �Է�
	public void guideBbsinsert(GuideBbsVO vo){
		mapper.guideBbsInsert(vo);
	}
}
