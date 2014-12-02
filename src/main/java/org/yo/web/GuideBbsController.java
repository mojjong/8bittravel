package org.yo.web;


import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yo.guidebbs.service.GuideBbsService;
import org.yo.guidebbs.vo.GuideBbsVO;
import org.yo.travelbbs.vo.TravelbbsVO;


@Controller
@RequestMapping("/bbs/guide/*")
public class GuideBbsController {
	
	private static final Logger logger = LoggerFactory.getLogger(GuideBbsController.class);
	
	@Inject
	GuideBbsService service;


	//글 리스트 뿌리기(무한스크롤)
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String scrollList1(){
		System.out.println("스크롤");
		return "/bbs/guidebbs/guideboard";
	}
	
		
	//글 리스트 뿌리기(무한스크롤)
		@RequestMapping(value="/list", method = RequestMethod.POST,produces = "application/json")
		public @ResponseBody List<GuideBbsVO> scrollList2(GuideBbsVO vo, Integer no, Model model){
			
			//vo.setTravelno(no);
			System.out.println(vo.toString());
			List<GuideBbsVO> list = service.glist();
		
			return list;
		}
		
		@RequestMapping(value="/place", method = RequestMethod.GET)
		public String placeAdd(){
			System.out.println("스크롤");
			return "/bbs/guidebbs/guideboard";
		}
		//장소 추가하기
		@RequestMapping(value = "/place", method = RequestMethod.POST)
			public void placeAdd(GuideBbsVO vo){
			System.out.println("aaaa");
				service.placeAdd(vo);
				logger.info("컨트롤 : " + vo.toString());
		
			}
			


}

