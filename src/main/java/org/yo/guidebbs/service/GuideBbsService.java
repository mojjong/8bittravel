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
	  System.out.println("여기는 가이드 플랜");
		return mapper.guideplan(vo);
	}
	
	public RegionVO region(GuideBbsVO vo){
		logger.info("region 쿼리");
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
	public GP_PhotoVO read_gpphoto(GuideBbsVO vo){
		System.out.println("여기는 포토리드매퍼 : " + vo.toString());
		return mapper.read_gpphoto(vo);
	}

	//gpPhoto 업데이트
	@Transactional(propagation=Propagation.REQUIRED)
	public void update_gpPhoto(GP_PhotoVO vo){
		System.out.println("업데이트service : "+ vo.toString());
		 mapper.update_gpPhoto(vo);
		 mapper.update_gpPhotoFile(vo);
	}
	
	/*public void update_gpPhotoFile(GP_PhotoVO vo){
		mapper.update_gpPhotoFile(vo);
	}*/
	

	//사용자가 보는 뷰
	public List<GuideBbsVO> userGviewlist(GuideBbsVO vo){
		logger.info("service :여기는 사용자가 보는 view" );
		return mapper.userGviewlist(vo);
	}
	
	//사용자가 보는 가이드 목록뷰
	public List<GuideBbsVO> gulist(GuideBbsVO vo){
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
