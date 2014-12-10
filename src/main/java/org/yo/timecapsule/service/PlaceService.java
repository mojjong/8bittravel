package org.yo.timecapsule.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.yo.timecapsule.mapper.PlaceMapper;
import org.yo.timecapsule.vo.PlaceVO;

@Service("PlaceService")
public class PlaceService {
	
	private static Logger logger = LoggerFactory.getLogger(PlaceService.class);
	
	@Inject
	private PlaceMapper mapper;
	
	public List<PlaceVO> recentPlaceList(){
		return mapper.recentPlaceList();
	}
	
	public List<PlaceVO> searchPlaceList(String place){
		return mapper.searchPlaceList(place);
	}

}
