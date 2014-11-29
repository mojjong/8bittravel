package org.yo.web;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yo.travelbbs.service.TravelbbsService;
import org.yo.travelbbs.vo.TravelbbsVO;

@Controller
@RequestMapping("/bbs/travelbbs/*")
public class TravelbbsController {

	private Logger logger = Logger.getLogger(TravelbbsController.class);
	
	@Inject
	TravelbbsService service;
	
	@RequestMapping(value="/board")
	public String travelbbs(){
		return "/bbs/travelbbs/list";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	@ResponseBody
	public List<TravelbbsVO> list(@RequestParam(value = "page", defaultValue = "1") Integer page){
		logger.info("getList : " + page);
		return service.getList(page);
	}
	
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public String write(TravelbbsVO vo){
		
		return "bbs/travelbbs/write";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String create(TravelbbsVO vo){
		logger.info("create : " + vo);
		service.create(vo);
		
		return "";
	}
	
	@RequestMapping(value="/read", method = RequestMethod.GET)
	public String read(int no, Model model){
		logger.info("read : " + no);
		model.addAttribute("vo", service.read(no));
		return "/bbs/travelbbs/read";
	}
	
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public String update(TravelbbsVO vo){
		logger.info("update : " + vo);
		
		service.update(vo);
		
		return "";
	}
	
	
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String update(int no){
		logger.info("delete : " + no);
		
		service.delete(no);
		
		return "";
	}
	
}
