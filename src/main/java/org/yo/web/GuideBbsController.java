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
import org.yo.guidebbs.service.GuideBbsService;
import org.yo.guidebbs.vo.GuideBbsVO;


@Controller
@RequestMapping("/bbs/guide/*")
public class GuideBbsController {
	
	private static final Logger logger = LoggerFactory.getLogger(GuideBbsController.class);
	
	@Inject
	GuideBbsService service;


	@RequestMapping(value="/guideview", method = RequestMethod.GET)
	public String scrollList1(GuideBbsVO vo, Model model){
		vo.setGpno(61);
		int gpno = vo.getGpno();
		System.out.println(gpno);
		
		model.addAttribute("placeList", service.glist(gpno)); 
		return "/bbs/guidebbs/view";
	}
	
	@RequestMapping(value="/guidetab", method = RequestMethod.GET)
	public String guideTab(GuideBbsVO vo, Integer tab, Model model){
		System.out.println("占쏙옙占쏙옙트 占쏙옙占쏙옙占쌍깍옙");
		/*vo.setGpno(61);
		int gpno = vo.getGpno();
		System.out.println(gpno);*/
		
		model.addAttribute("tab", tab); 
		model.addAttribute("placeList", service.glist(61)); 
		return "/bbs/guidebbs/guidetab";
	}
	
		@RequestMapping(value="/guidelist", method = RequestMethod.GET)
		@ResponseBody
		public List<GuideBbsVO> guidelist(GuideBbsVO vo, Model model){
			//vo.setTravelno(158);
			//int travelno = vo.getTravelno();
			//System.out.println(travelno);
			
			logger.info("guideList : " + vo.toString());
			//model.addAttribute("guList", service.gulist(vo.getTravelno())); 
			return service.gulist(vo);
		}

	/*@RequestMapping(value="/list", method = RequestMethod.POST,produces = "application/json")
	public @ResponseBody List<GuideBbsVO> scrollList2(GuideBbsVO vo, Integer gpno, Model model){
		//vo.setTravelno(no);
		System.out.println(vo.toString());
		List<GuideBbsVO> list = service.glist(gpno);
		//model.addAttribute("placeList", service.glist(gpno)(gpno)); 
	
		return list;*/
		
	/*//占쏙옙 占쏙옙占쏙옙트 占싼몌옙占쏙옙

	//占쏙옙 占쏙옙占쏙옙트 占싼몌옙占쏙옙(占쏙옙占싼쏙옙크占쏙옙)
		@RequestMapping(value="/list", method = RequestMethod.GET)
		public String scrollList1(){
			System.out.println("占쏙옙크占쏙옙");
			return "/bbs/guidebbs/guideboard";
		}
		
		
	//占쏙옙 占쏙옙占쏙옙트 占싼몌옙占쏙옙(占쏙옙占싼쏙옙크占쏙옙)

		@RequestMapping(value="/list", method = RequestMethod.POST,produces = "application/json")
		public @ResponseBody List<GuideBbsVO> scrollList2(GuideBbsVO vo, Integer gpno, Model model){
			//vo.setTravelno(no);
			System.out.println(vo.toString());
			List<GuideBbsVO> list = service.glist(gpno);
			//model.addAttribute("placeList", service.glist(gpno)(gpno)); 
		
			return list;
		}*/
	
		@RequestMapping(value="/place", method = RequestMethod.GET)
		public String placeAdd2(GuideBbsVO vo, Model model){
			vo.setGpno(61);
			int gpno = vo.getGpno();
			System.out.println(gpno);
			
			model.addAttribute("placeList", service.glist(gpno)); 
		
			return "/bbs/guidebbs/guideboard";
		}
		
		@RequestMapping(value = "/place", method = RequestMethod.POST)
			public void placeAdd(GuideBbsVO vo, Model model){
			
				service.placeAdd(vo);
				
				logger.info("占쏙옙트占쏙옙 : " + vo.toString());
				
				//return "redirect:/bbs/guide/place";
				
			}
		
		@RequestMapping(value = "/placeModify", method =RequestMethod.POST )
		public void placeModi(GuideBbsVO vo){
			System.out.println("占쏙옙占쏙옙:"+vo.toString());
			service.placeModi(vo);	
			logger.info("占쏙옙트占쏙옙 占쏙옙寗占쏙옙占� : " );
			
		}
		
		@RequestMapping(value = "/placeDel", method =RequestMethod.GET )
		public String placeDel(Integer no){
			System.out.println(no);
			service.placeDel(no);	
			logger.info("占쏙옙트占쏙옙 占쏙옙寧占쏙옙占� : " );
			return "redirect:/bbs/guide/place";
		}
		
		//GuideBbsInsert -get
		@RequestMapping(value="/gWrite", method = RequestMethod.GET)
		public String guideBbsInsert1(GuideBbsVO vo, Model model){
			System.out.println("占쏙옙占쏙옙占� 占쏙옙占싱듸옙 占쏙옙澍】占� insert");
			return "/bbs/guidebbs/guideboard";
		}
		//GuideBbsInsert-post 
		@RequestMapping(value="/gWrite", method = RequestMethod.POST)
		public String guideBbsInsert2(GuideBbsVO vo, Model model){
			System.out.println("占쏙옙占쏙옙占쏙옙");
			String a = vo.getGuideid();
			logger.info(a);
			service.guideBbsinsert(vo); 
			return "redirect:/bbs/travelbbs/read";
		}

}

