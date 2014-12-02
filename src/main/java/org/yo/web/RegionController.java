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

//�׸��� ������ ���� �������� �ѷ��ִ� ��Ʈ�ѷ�
@Controller
@RequestMapping("/main/region/*")
public class RegionController {
	//logger �̿��.
	private static final Logger logger = LoggerFactory.getLogger(RegionController.class);
	
	@Inject
	private RegionService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String regionList(Model model) {
		model.addAttribute("regionList", service.regionList());
		model.addAttribute("themeList", service.themeList());
		model.addAttribute("r_photoList", service.r_photoList());
		return "/bbs/main/regionList";
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
