package org.yo.web;


import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;
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
	
	private static final Logger logger = Logger.getLogger(GuideBbsController.class);
	
	@Inject
	GuideBbsService service;

	//travel View 화면에서 가이드 목록보기
	@RequestMapping(value="/guidelist", method = RequestMethod.GET)
	@ResponseBody
	public List<GuideBbsVO> guidelist(GuideBbsVO vo,Integer travelno, Model model){
		logger.info("guideList : " + vo.toString());
		//model.addAttribute("guList", service.gulist(vo.getTravelno())); 
		return service.gulist(vo);
	}	
	
	//가이드가 일차별로일정짤때 보이는 view2
	@RequestMapping(value="/guidetab", method = RequestMethod.GET)
	public String guideTab(GuideBbsVO vo, Integer plandate, Model model){
		
		model.addAttribute("plandate", plandate); 
		//model.addAttribute("placeList", service.glist(61)); 
		logger.info("B : " + vo.getPlandate());
		model.addAttribute("placeList", service.daylist(159)); 
		logger.info("A : " + service.daylist(159));
		return "/bbs/guidebbs/guidetab";
	}
	
	//가이드가 일차별로일정짤때 보이는 view1
		@RequestMapping(value="/place", method = RequestMethod.GET)
		public String placeAdd2(GuideBbsVO vo, Model model){
			/*vo.setGpno(61);
			int gpno = vo.getGpno();
			 service.glist(gpno);*/
			logger.info("AAA");
			/*vo.setRno(377);
			vo.setGpno(61);
			vo.setGuideid("user02");
			vo.setGuideno(33);
			vo.setCost(50000);
			vo.setPay(20000);*/
			vo.setTravelno(159);
			logger.info("daylist" + service.daylist(159));
			service.daylist(vo.getTravelno());
		
			return "/bbs/guidebbs/guideboard";
		}
		//가이드가 일차별로일정짤때 보이는 view3
		@RequestMapping(value = "/place", method = RequestMethod.POST ,produces = "application/json")
		@ResponseBody
			public List<GuideBbsVO> placeAdd(GuideBbsVO vo, Model model){
			
				service.placeAdd(vo);

				logger.info("추가 : "+ vo.toString());
				logger.info("장소 ADD: " + service.glist(vo.getGpno()));
				
			//return service.glist(vo.getGpno());
			return service.daylist(vo.getTravelno());
				
			}
		
		//장소 수정
		@RequestMapping(value = "/placeModify", method =RequestMethod.POST ,produces = "application/json")
		@ResponseBody
		public List<GuideBbsVO> placeModi(GuideBbsVO vo){		
			logger.info("여기는 수정 컨트롤러" + vo.toString());
			service.placeModi(vo);	
			logger.info("수정" + vo.toString());
		return service.glist(vo.getGpno());
		}
		
		//장소 삭제
		@RequestMapping(value = "/placeDel", method =RequestMethod.POST ,produces = "application/json" )
		@ResponseBody
		public List<GuideBbsVO> placeDel(GuideBbsVO vo){
			System.out.println("삭제" + vo.toString());
			service.placeDel(vo.getGrno());	
			return service.glist(vo.getGpno());
		}
		
		
		
		//GuideBbsInsert -get
		@RequestMapping(value="/gWrite", method = RequestMethod.GET)
		public String guideBbsInsert1(GuideBbsVO vo, Model model){
			
			return "/bbs/guidebbs/guideboard";
		}
		//GuideBbsInsert-post 
		@RequestMapping(value="/gWrite", method = RequestMethod.POST)
		public String guideBbsInsert2(GuideBbsVO vo, Model model){
			System.out.println("gWrite 컨트롤러");
			String a = vo.getGuideid();
			logger.info(a);
			service.guideBbsinsert(vo); 
			return "redirect:/bbs/travelbbs/read";
		}
		
		
		//사용자가 보는 view1
	      @RequestMapping(value="/gView", method = RequestMethod.GET)
	      public String gviewTab1(GuideBbsVO vo, Model model){
	    	  logger.info(vo.toString());
	         model.addAttribute("placeList", service.daylist(vo.getTravelno())); 
	         
	         return "/bbs/guidebbs/gview";
	      }
	      
	      //사용자가 보는 view2
	         @RequestMapping(value="/gviewtab", method = RequestMethod.GET)
	         public String gviewTab2(GuideBbsVO vo, Integer plandate,  Integer gpno,Model model){
	            
	            model.addAttribute("plandate", plandate); 
	            model.addAttribute("placeList", service.glist(gpno)); 
	            return "/bbs/guidebbs/gviewtab";
	         }
	        
}

