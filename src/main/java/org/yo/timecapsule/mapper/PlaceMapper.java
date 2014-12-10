package org.yo.timecapsule.mapper;

import java.util.List;

import org.yo.timecapsule.vo.PlaceVO;

public interface PlaceMapper {
	
	
	public List<PlaceVO> recentPlaceList();
	
	public List<PlaceVO> searchPlaceList(String place);
	
}
