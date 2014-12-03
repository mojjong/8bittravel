package org.yo.web;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.yo.guidebbs.service.GuideBbsService;
import org.yo.guidebbs.vo.GuideBbsVO;


@Controller
@RequestMapping("/bbs/guide/*")
public class GuideBbsController {
	
	private static final Logger logger = LoggerFactory.getLogger(GuideBbsController.class);
	
	@Inject
	GuideBbsService service;


	//»ç¿ëÀÚ°¡ º¸´Â ºäÈ­¸é
	@RequestMapping(value="/guideview", method = RequestMethod.GET)
	public String scrollList1(GuideBbsVO vo, Model model){
		System.out.println("¸®½ºÆ® º¸¿©ÁÖ±â");
		vo.setGpno(61);
		int gpno = vo.getGpno();
		System.out.println(gpno);
		
		model.addAttribute("placeList", service.glist(gpno)); 
		return "/bbs/guidebbs/view";
	}
	
	//»ç¿ëÀÚ°¡ º¸´Â °¡ÀÌµå ¸®½ºÆ® È­¸é
		@RequestMapping(value="/guidelist", method = RequestMethod.GET)
		public String guidelist(GuideBbsVO vo, Model model){
			System.out.println("¸®½ºÆ® º¸¿©ÁÖ±â");
			vo.setTravelno(158);
			int travelno = vo.getTravelno();
			System.out.println(travelno);
			
			model.addAttribute("guList", service.gulist(travelno)); 
			return "/bbs/guidebbs/list";
		}

	/*@RequestMapping(value="/list", method = RequestMethod.POST,produces = "application/json")
	public @ResponseBody List<GuideBbsVO> scrollList2(GuideBbsVO vo, Integer gpno, Model model){
		//vo.setTravelno(no);
		System.out.println(vo.toString());
		List<GuideBbsVO> list = service.glist(gpno);
		//model.addAttribute("placeList", service.glist(gpno)(gpno)); 
	
		return list;*/
		
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
			
				service.placeAdd(vo);
				
				logger.info("ÄÁÆ®·Ñ : " + vo.toString());
				
				//return "redirect:/bbs/guide/place";
				
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
		
		//GuideBbsInsert -get
		@RequestMapping(value="/gWrite", method = RequestMethod.GET)
		public String guideBbsInsert1(GuideBbsVO vo, Model model){
			System.out.println("¿©±â´Â °¡ÀÌµå ºñºñ¿¡½º insert");
			return "/bbs/guidebbs/guideboard";
		}
		//GuideBbsInsert-post 
		@RequestMapping(value="/gWrite", method = RequestMethod.POST)
		public String guideBbsInsert2(GuideBbsVO vo, Model model){
			System.out.println("ÇÏÇÏÇÏ");
			String a = vo.getGuideid();
			logger.info(a);
			service.guideBbsinsert(vo); 
			return "redirect:/bbs/travelbbs/read";
		}

}

