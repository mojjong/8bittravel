package org.yo.travelbbs.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.yo.travelbbs.mapper.TravelbbsMapper;
import org.yo.travelbbs.vo.TravelbbsVO;
import org.yo.web.util.TravelBbsCriteria;

@Service("travelbbsService")
public class TravelbbsService {
	
	private static Logger logger = LoggerFactory.getLogger(TravelbbsService.class);
	
	@Inject
	private TravelbbsMapper mapper;
	
	public List<TravelbbsVO> getList(Integer page){
		logger.info(page.toString());
		return mapper.getList(page);
	}
	
	public List<TravelbbsVO> getFilteringList(TravelBbsCriteria cri){
		return mapper.getFilteringList(cri);
	}
	
	public void create(TravelbbsVO vo){
		mapper.create(vo);
	}
	
	public TravelbbsVO read(int no){
		return mapper.read(no);
	}
	
	public void update(TravelbbsVO vo){
		mapper.update(vo);
	}
	
	public void delete(int no){
		mapper.delete(no);
	}

	public TravelbbsVO themaName(int themeno){
		return mapper.themaName(themeno);
	}

	
	 
}
