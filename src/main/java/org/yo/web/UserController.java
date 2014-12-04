package org.yo.web;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yo.region.service.RegionService;
import org.yo.user.service.UserService;
import org.yo.user.vo.UserVO;
import org.yo.web.util.Json;


//�׸��� ������ ���� �������� �ѷ��ִ� ��Ʈ�ѷ�
@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = Logger.getLogger(UserController.class);
	
	@Inject
	private RegionService regionService;
	
	@Inject
	private UserService service;
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPost(UserVO vo, Model model) {
		
		logger.info(vo.toString());
		service.join(vo);
		//model.addAttribute("regionList", regionService.regionList());
		//�α��� �Ϸ� �������� �Ѿ����.
		return "/user/join";
	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinGet(Model model) {
		/*
		model.addAttribute("regionList", service.regionList());
		model.addAttribute("themeList", service.themeList());
		model.addAttribute("r_photoList", service.r_photoList());
		return "/main/regionList";
		*/
		//logger.info(regionService.regionList().toString());
		model.addAttribute("regionList", regionService.regionList());
		return "/user/join";
	}
	
    @RequestMapping(value = "/join/idcheck", method = RequestMethod.GET)
    public @ResponseBody Json idcheck(String id) {
    	logger.info("idcheck");
    	String result = service.checkid(id);
    	logger.info(result);
        return new Json("{ \"result\" : \""+ result +"\" }");
    }
	
	
}
