package org.yo.web;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yo.feedback.service.FeedbackService;
import org.yo.feedback.vo.FeedbackVO;

@Controller
@RequestMapping("/bbs/feedback/*")
public class FeedbackController {
	
	@Inject
	FeedbackService service;
	
	@RequestMapping("/board")
	public String board(){
		
		return "/bbs/feedback/list";
	}
	
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	@ResponseBody
	public List<FeedbackVO> list(@RequestParam(value = "page", defaultValue="1")int page){
		
		
		return service.list(page);
	}
	
	@RequestMapping("/write")
	public String create(FeedbackVO vo){
		
		service.create(vo);
		
		return "/bbs/list";
	
	}
	
	@RequestMapping("/read")
	public String read(int no, Model model){
		
	
		model.addAttribute("read",service.read(no));
		
		return "/bbs/list";
	
	}
	@RequestMapping("/update")
	public String update(FeedbackVO vo){
	
		service.update(vo);
		
		return "/bbs/list";
	
	}
	
	@RequestMapping("/delete")
	public String delete(int no){
	
		service.delete(no);
		
		return "/bbs/list";
	
	}
}
