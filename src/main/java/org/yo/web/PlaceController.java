package org.yo.web;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yo.timecapsule.service.PlaceService;
import org.yo.timecapsule.vo.PlaceVO;


@Controller
@RequestMapping("/timecapsule/*")
public class PlaceController {

	@Inject
	PlaceService service;
	
	private static final Logger logger = LoggerFactory.getLogger(PlaceController.class);
	
	@RequestMapping(value="/placeList", method = RequestMethod.GET)
	public String placeList(Model model){
		model.addAttribute("recentList", service.recentPlaceList());
		logger.info(service.recentPlaceList().toString());
		return "timecapsule/placeList";
	}
	
	@RequestMapping(value="/jsonSearchPlaceList", produces="application/json")
	public @ResponseBody List<PlaceVO> jsonRegionList(String place){
		
		List<PlaceVO> searchList = service.searchPlaceList(place);
		logger.info(searchList.toString());
		
		return searchList;
	}
	
	
/*	@RequestMapping(value="/jsonRegionList", produces="application/json")
	public @ResponseBody List<RegionVO> jsonRegionList(){
		
		List<RegionVO> regionList = service.regionList();
		
		return regionList;
	}*/
	
}
