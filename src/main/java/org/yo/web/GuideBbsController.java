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


	//±Û ¸®½ºÆ® »Ñ¸®±â(¹«ÇÑ½ºÅ©·Ñ)
	/*@RequestMapping(value="/list", method = RequestMethod.GET)
	public String scrollList1(){
		System.out.println("½ºÅ©·Ñ");
		return "/bbs/guidebbs/guideboard";
	}*/
		
	/*//±Û ¸®½ºÆ® »Ñ¸®±â

	//ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Ñ¸ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½Ñ½ï¿½Å©ï¿½ï¿½)
		@RequestMapping(value="/list", method = RequestMethod.GET)
		public String scrollList1(){
			System.out.println("ï¿½ï¿½Å©ï¿½ï¿½");
			return "/bbs/guidebbs/guideboard";
		}
		
		
	//ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Ñ¸ï¿½ï¿½ï¿½(ï¿½ï¿½ï¿½Ñ½ï¿½Å©ï¿½ï¿½)

		@RequestMapping(value="/list", method = RequestMethod.POST,produces = "application/json")
		public @ResponseBody List<GuideBbsVO> scrollList2(GuideBbsVO vo, Integer gpno, Model model){
			//vo.setTravelno(no);
			System.out.println(vo.toString());
			List<GuideBbsVO> list = service.glist(gpno);
			//model.addAttribute("placeList", service.glist(gpno)(gpno)); 
		
			return list;
		}*/
	
		//Àå¼Ò Ãß°¡ÇÏ±â & ±× ±Û¿¡ ÇØ´çÇÏ´Â ¸®½ºÆ® º¸ÀÌ±â-get
		@RequestMapping(value="/place", method = RequestMethod.GET)
		public String placeAdd2(GuideBbsVO vo, Model model){
			vo.setGpno(61);
			int gpno = vo.getGpno();
			System.out.println(gpno);
			
			model.addAttribute("placeList", service.glist(gpno)); 
		
			return "/bbs/guidebbs/guideboard";
		}
		
		//Àå¼Ò Ãß°¡ÇÏ±â-post
		@RequestMapping(value = "/place", method = RequestMethod.POST)
			public void placeAdd(GuideBbsVO vo, Model model){
			System.out.println("aaaa");
				service.placeAdd(vo);
				
				logger.info("ÄÁÆ®·Ñ : " + vo.toString());
				
			}
		
		//Àå¼Ò ¼öÁ¤
		@RequestMapping(value = "/placeModify", method =RequestMethod.POST )
		public void placeModi(GuideBbsVO vo){
			System.out.println("¼öÁ¤:"+vo.toString());
			service.placeModi(vo);	
			logger.info("ÄÁÆ®·Ñ Àå¼Ò¼öÁ¤ : " );
			
		}
		
		//Àå¼Ò»èÁ¦
		@RequestMapping(value = "/placeDel", method =RequestMethod.GET )
		public String placeDel(Integer no){
			System.out.println(no);
			service.placeDel(no);	
			logger.info("ÄÁÆ®·Ñ Àå¼Ò»èÁ¦ : " );
			return "redirect:/bbs/guide/place";
		}
			


}

