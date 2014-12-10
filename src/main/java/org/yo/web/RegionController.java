package org.yo.web;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yo.region.service.RegionService;
import org.yo.region.vo.RegionVO;
import org.yo.region.vo.ThemeVO;

//테마와 지역을 선택 페이지를 뿌려주는 컨트롤러
@Controller
@RequestMapping("/main/region/*")
public class RegionController {
	//logger 이용시.
	private static final Logger logger = LoggerFactory.getLogger(RegionController.class);
	
	@Inject
	private RegionService service;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String regionList(Model model) {
		model.addAttribute("regionList", service.regionList());
		model.addAttribute("themeList", service.themeList());
		model.addAttribute("r_photoList", service.r_photoList());
		return "/main/regionList";
	}
	
	
	@RequestMapping(value="/jsonRegionList", produces="application/json")
	public @ResponseBody List<RegionVO> jsonRegionList(){
		
		List<RegionVO> regionList = service.regionList();
		
		return regionList;
	}
	
	@RequestMapping(value="/jsonThemeList", produces="application/json")
	public @ResponseBody List<ThemeVO> jsonThemeList(){
		
		List<ThemeVO> themeList = service.themeList();
		
		return themeList;
	}
	
	
}
