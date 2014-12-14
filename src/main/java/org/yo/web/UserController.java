package org.yo.web;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yo.region.service.RegionService;
import org.yo.user.service.UserService;
import org.yo.user.vo.UserVO;
import org.yo.user.vo.YomamUserDetail;
import org.yo.web.util.Json;


//�׸��� ������ ���� �������� �ѷ��ִ� ��Ʈ�ѷ�
@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	private RegionService regionService;
	
	@Inject
	private UserService service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet(Model model) {
		return "/user/login";
	}
	
	
/*	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody Json loginPost(UserVO vo, HttpSession session) {
		String result = service.login(vo);
		if(result.equals("1")){
			session.setAttribute("userLoginInfo", vo);
			logger.info("session ID: ", session.getId());
		}
		return new Json("{ \"result\" : \""+ result +"\" }");
	}*/
	
	
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public void logout(HttpSession session, HttpServletResponse response) throws Exception {
 
/* 		YomamUserDetail userDetails = (YomamUserDetail)session.getAttribute("userLoginInfo");

		logger.info("Welcome logout! {}, {}", session.getId(), userDetails.getUsername());*/

		session.invalidate();
		response.sendRedirect("/user/login");
	}

	@RequestMapping(value = "login_success", method=RequestMethod.GET)
	public void login_success(HttpSession session){
		YomamUserDetail userDetails = 
			(YomamUserDetail)SecurityContextHolder.getContext()
			.getAuthentication().getDetails();

		logger.info("Welcome login_success! {}, {}", session.getId(), userDetails.getUsername()+"/"+userDetails.getPassword());
		session.setAttribute("userLoginInfo", userDetails);
	}
	
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPost(UserVO vo, Model model) {
		logger.info(vo.toString());
		service.join(vo);
		return "redirect:/main/region/";
	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinGet(Model model) {
		model.addAttribute("regionList", regionService.regionList());
		return "/user/join";
	}
	
    @RequestMapping(value = "/join/idcheck", method = RequestMethod.GET)
    public @ResponseBody Json idcheck(String id) {
    	String result = service.checkid(id);
        return new Json("{ \"result\" : \""+ result +"\" }");
    }
	
	
}
