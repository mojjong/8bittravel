package org.yo.guidebbs.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.yo.guidebbs.mapper.GuideBbsMapper;
import org.yo.guidebbs.vo.GP_PhotoVO;
import org.yo.guidebbs.vo.GuideBbsVO;

import org.yo.region.vo.RegionVO;

@Service("GuideBbsService")
public class GuideBbsService {
	
	private static Logger logger = LoggerFactory.getLogger(GuideBbsService.class);
	
	@Inject
	GuideBbsMapper mapper;
	
	public void gplan(GuideBbsVO vo){
		mapper.gplan(vo);
	}
	
	//GuideRegion 리스트
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
	
	
	public GuideBbsVO guideplan(GuideBbsVO vo){
	
		return mapper.guideplan(vo);
	}
	
	public RegionVO region(GuideBbsVO vo){
		
		return mapper.region(vo);
	}
	
	
	//guidePlan 사진 insert
	@Transactional(propagation=Propagation.REQUIRED)
	public void insert_gpPhoto(GP_PhotoVO vo){
		logger.info("포토서비스 : " + vo);
		mapper.insert_gpPhoto(vo);
		
		for (String filename : vo.getFileList()) {
			logger.info("gpphoto : " + filename);
			mapper.fileOneInsert(vo.setFilename(filename.substring(0, filename.lastIndexOf(".")))
					.setSuffix(filename.substring(filename.lastIndexOf(".")+1)));
		}
	}
	
	//gpPhoto Read(guideno 값 구하기)
	/*public GP_PhotoVO read_gpphoto(GuideBbsVO vo){
		return mapper.read_gpphoto(vo);
	}*/
	public GP_PhotoVO read_gpphoto(){
		return mapper.read_gpphoto();
	}
	//gpPhoto 업데이트
	public void update_gpPhoto(){
		 mapper.update_gpPhoto();
	}
	
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

	public int isEmpty(GP_PhotoVO vo) {
	
		return mapper.isEmpty(vo);
	}
}
