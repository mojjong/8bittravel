package org.yo.region.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.yo.region.mapper.RegionMapper;
import org.yo.region.vo.R_photoVO;
import org.yo.region.vo.RegionVO;
import org.yo.region.vo.ThemeVO;


@Service("RegionService")
public class RegionService {
	
	private static Logger logger = LoggerFactory.getLogger(RegionService.class);
	
	@Inject
	private RegionMapper mapper;
	
	public List<RegionVO> regionList(){
		return mapper.regionList();
	}
	
	public List<ThemeVO> themeList(){
		return mapper.themeList();
	}
	
	public List<R_photoVO> r_photoList(){
		return mapper.r_photoList();
	}
	
}
