package org.yo.web;


import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
/*	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public @ResponseBody List<GuideBbsVO> glist(Integer no, Model model) {
		//model.addAttribute("guideList", service.glist(no));
		return service.glist(no);
	}

	*/

	//글 리스트 뿌리기(무한스크롤)
		@RequestMapping(value="/list", method = RequestMethod.GET)
		public String scrollList1(){
			System.out.println("스크롤");
			return "/bbs/travelbbs/guideboard";
		}
		
		
	//글 리스트 뿌리기(무한스크롤)
		@RequestMapping(value="/list", method = RequestMethod.POST,produces = "application/json")
		public @ResponseBody List<GuideBbsVO> scrollList2(GuideBbsVO vo, Integer no, Model model){
			
			//vo.setTravelno(no);
			System.out.println(vo.toString());
			List<GuideBbsVO> list = service.glist();
		
			return list;
		}

}

