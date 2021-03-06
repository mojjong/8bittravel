package org.yo.web;


import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yo.guidebbs.service.GuideBbsService;
import org.yo.guidebbs.vo.GP_PhotoVO;
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
	public List<GuideBbsVO> guidelist(GuideBbsVO vo, Model model){
		logger.info("guideList : " + vo.toString());
		//model.addAttribute("guList", service.gulist(vo.getTravelno())); 
		return service.gulist(vo);
	}	
	

	//가이드 글을 클릭하면 사용자가 보는 view
	@RequestMapping(value="/userGviewlist", method = RequestMethod.GET)
	
	public String userGview(GuideBbsVO vo,Model model){
		logger.info("userGview :" + service.userGviewlist(vo));
		 model.addAttribute("guList", service.userGviewlist(vo)); 
		 logger.info("GPPHOTO :" + service.read_gpphoto(vo));
		 model.addAttribute("gpphoto", service.read_gpphoto(vo));
		return "/bbs/guidebbs/userGview";
	}	

	
	//GPPHOTO write
	@RequestMapping(value="/guidep", method = RequestMethod.POST)
	public String guideplan(GP_PhotoVO vo, int travelno, Model model){
		
		logger.info("controler : " + vo.toString());
		
		//파일이 기존에 있을 경우 update
		if(vo.getGpphotono()!=0){
			System.out.println("업데이트");
			service.update_gpPhoto(vo);
			System.out.println("업데이트 :  "+ vo.toString());
		}else{
			//없으면 insert
			service.insert_gpPhoto(vo);
		}
		
		
		
		return "redirect:/bbs/guide/place?travelno="+travelno+"&guideno="+vo.getGuideno()+"&gpphotono="+vo.getGpphotono();
	}
	
	
	
	//가이드가 일차별로일정짤때 보이는 view2
	@RequestMapping(value="/guidetab", method = RequestMethod.GET)
	public String guideTab(GuideBbsVO vo, Model model){
		logger.info("aaaaaaaaa" + vo.toString());
		
		if(!service.grList(vo).isEmpty()){
			GuideBbsVO gbVo = service.grList(vo).get(0);
			
			vo.setGuideid(gbVo.getGuideid());
			vo.setGpno(gbVo.getGpno());
			vo.setRno(gbVo.getRno());
			vo.setGuideno(gbVo.getGuideno());
			logger.info(vo);
		}
		
		//탭 추가할때마다 gpno 증가/plandate 가져오기
		logger.info(service.daylist(vo).isEmpty());
		if(service.daylist(vo).isEmpty()){
			logger.info("aaaaaaa");
			service.gplan(vo);
			}
		else{
			logger.info("bbbbbbbb" + service.daylist(vo));
				
		}
		
		model.addAttribute("vo", vo); 
		logger.info("gplanVO : "  + vo.toString());
		logger.info("가이드지역 List : " + service.grList(vo));
		
		model.addAttribute("plandate", vo.getPlandate()); 
		model.addAttribute("placeList",service.daylist(vo)); 
		logger.info("일차별List : " +service.daylist(vo));	
		logger.info("plandate : " + vo.getPlandate()+ ", + " + vo.getTravelno());
		
		return "/bbs/guidebbs/guidetab";
	}
	
	//--------------------------------------가이드가 일차별로일정짤때 보이는 Place - get
		@RequestMapping(value="/place", method = RequestMethod.GET)
		public String placeAdd2(GuideBbsVO vo, Model model){
			
			logger.info("AAA" + vo.toString());
			
			GuideBbsVO gVo = service.guideplan(vo);
			logger.info("가이드BBS GVO:::::    "+gVo);
			model.addAttribute("guideplan", gVo);

			model.addAttribute("region", service.region(gVo));
		
			GP_PhotoVO gpVo = service.read_gpphoto(vo);
			logger.info("sdfsdfsdf     "+gpVo);
			String gpfilename;
			if(gpVo != null){
				gpfilename = gpVo.getFilename().substring(gpVo.getFilename().lastIndexOf("_")+1);
				System.out.println("gpphotofilename " + gpfilename);
				gpVo.setOriginfilename(gpfilename);
			}
			
			model.addAttribute("gpphoto", gpVo);
			logger.info("가이드BBS GVO:::::    "+gpVo);
			return "/bbs/guidebbs/guideboard";
		}
		//가이드가 일차별로일정짤때 보이는 view3
		@RequestMapping(value = "/place", method = RequestMethod.POST ,produces = "application/json")
		@ResponseBody
			public List<GuideBbsVO> placeAdd(GuideBbsVO vo, Model model){
				logger.info("추가 : "+ vo);
				
				service.placeAdd(vo);
				
				
				logger.info("데이 ADD : " + service.daylist(vo));
			
			return service.daylist(vo);
				
			}
		//-------------------------------------------------------------------------
		
		//장소 수정
		@RequestMapping(value = "/placeModify", method =RequestMethod.POST ,produces = "application/json")
		@ResponseBody
		public List<GuideBbsVO> placeModi(GuideBbsVO vo){		
			
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
		
		
		
		/*//GuideBbsInsert -get
		@RequestMapping(value="/gWrite", method = RequestMethod.GET)
		public String guideBbsInsert1(GuideBbsVO vo, Model model){
			
			return "/bbs/guidebbs/guideboard";
		}*/
		//GuideBbsInsert-post 
		@RequestMapping(value="/gbbsWrite", method = RequestMethod.POST)
		public String guideBbsInsert2(GuideBbsVO vo){
			System.out.println("gWrite 컨트롤러");
			service.guideBbsinsert(vo); 
			return "redirect:/bbs/travelbbs/read";
		}
		
		
		//사용자가 보는 view1
	      @RequestMapping(value="/gView", method = RequestMethod.GET)
	      public String gviewTab1(GuideBbsVO vo, Model model){
	    	  logger.info(vo.toString());
	         model.addAttribute("placeList", service.daylist(vo)); 
	         
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

