package org.yo.web;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.yo.timecapsule.service.TimecapsuleService;
import org.yo.timecapsule.vo.TimecapsuleVO;
import org.yo.web.util.TimecapsuleCriteria;


@Controller
@RequestMapping("/timecapsule/sub/*")
public class TimeCapsuleController {
	
	private static final Logger logger = LoggerFactory.getLogger(TimeCapsuleController.class);
	
	@Inject
	private TimecapsuleService service;
	
	@RequestMapping(value="/placeList", method = RequestMethod.GET)
	public String placeList(){
		
		return "timecapsule/placeList";
	}
	
	@RequestMapping(value="/placesublist")
	public String placesub(@RequestParam(value="page", defaultValue="1") Integer page, Integer grno, Model model){
		
		TimecapsuleCriteria cri=new TimecapsuleCriteria();
		
		cri.setCurrentPage(page);
		//List<TimecapsuleVO> list = new ArrayList<TimecapsuleVO>();
		cri.setGrno(grno);
		logger.info(cri.toString());
		List<TimecapsuleVO> list = service.list(cri);
			
		if(list.isEmpty()){
			return "timecapsule/noplacesub";
		}
		
		cri.setCnt(list.get(0).getCnt());
		

		
		model.addAttribute("capsule", list);
		model.addAttribute("pageVo", cri);
		logger.info("크리 컨트롤러:"+cri.toString());
		logger.info("리스트 컨트롤러:"+list.toString());
		
		return "timecapsule/placesub";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(){
		System.out.println("write 컨트롤러1");
		return "timecapsule/write";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String create(TimecapsuleVO vo){
		System.out.println("write 컨트롤러2");
		logger.info(vo.toString());
		service.create(vo);
		return "redirect:/timecapsule/sub/placesublist?grno="+vo.getGrno();
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(TimecapsuleVO vo){
		System.out.println("delete 컨트롤러1");
		logger.info(vo.toString());
		service.delete(vo);
		return "redirect:/timecapsule/sub/placesublist?grno="+vo.getGrno();
	}
	
	
}
