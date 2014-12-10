package org.yo.timecapsule.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.yo.timecapsule.mapper.TimecapsuleMapper;
import org.yo.timecapsule.vo.TimecapsuleVO;
import org.yo.web.TimeCapsuleController;
import org.yo.web.util.TimecapsuleCriteria;



@Service("TimecapsuleService")
public class TimecapsuleService {
	
	private static final Logger logger = LoggerFactory.getLogger(TimecapsuleService.class);
	
	@Inject
	private TimecapsuleMapper mapper;

	public List<TimecapsuleVO> list(TimecapsuleCriteria cri) {
		
		logger.info("grno서비스:"+cri);
		return mapper.list(cri);
		
	}

	@Transactional(propagation=Propagation.REQUIRED)
	public void create(TimecapsuleVO vo) {
		mapper.create(vo);
		
		for (String filename : vo.getFileList()) {
			logger.info("transactional : " + vo.getNo() + ", " + filename);
			//String[] filenameArr = filename.split(".");
			mapper.fileOneInsert(vo.setFilename(filename.substring(0, filename.lastIndexOf(".")))
					.setSuffix(filename.substring(filename.lastIndexOf(".")+1)));
		}
	}
	
	public void delete(TimecapsuleVO no) {
		mapper.delete(no);
		
	}
	
/*	@Transactional(propagation=Propagation.REQUIRED) //메소드 단위로 트랜잭션 처리하고 싶을때.
	public void create(BbsVO vo){
		
		mapper.create(vo);
		logger.info("mapper입니다.");
		
		
		for (String filename : vo.getFileList()) {
			logger.info("transactional : " + vo.getBbsNo() + ", " + filename);
			mapper.fileOneInsert(vo.setFilename(filename));
		}
		
		
	};*/


	
	



}
