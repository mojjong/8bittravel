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
import org.yo.notice.service.NoticeService;
import org.yo.notice.vo.BbsCriteria;
import org.yo.notice.vo.Criteria;
import org.yo.notice.vo.NoticeVO;


@Controller
@RequestMapping("/bbs/notice/*")
public class NoticeController {

	private static Logger logger = LoggerFactory.getLogger("NoticeController");
	
	@Inject
	NoticeService service;
	
	
	
//	@RequestMapping("/board")
//	public String board(){
//		
//		return "/bbs/notice/list";
//	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(@RequestParam(value = "page", defaultValue="1")int page, Model model){
		
	
		Criteria cri = new BbsCriteria();
		
		cri.setCurrentPage(page);
		List<NoticeVO> list = service.list(cri);
		
		cri.setCnt(list.get(0).getCnt());
		
		model.addAttribute("pageVo", cri);
		model.addAttribute("boardList", list);
		
		
		return "/bbs/notice/list";
	
	}
	
	
	
	@RequestMapping(value="/write",method=RequestMethod.GET)
	public String create(NoticeVO vo){
		
		return "/bbs/notice/write";
	
	}
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String createConplete(NoticeVO vo){
		
		System.out.println(vo);
		service.create(vo);
		
		return "redirect:/bbs/notice/list";
	
	}
	
	@RequestMapping("/read")
	public String read(int no, Model model){
		
	
		model.addAttribute("read",service.read(no));
		
		return "/bbs/list";
	
	}
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String modify(NoticeVO vo, Model model){
	
		
		model.addAttribute("modi", service.read(vo.getNo()));
		
		
		
		return "/bbs/notice/modify";
	
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(NoticeVO vo){
	
	
		service.update(vo);
		
		return "redirect:/bbs/notice/list";
	
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(int no){
	
	
		service.delete(no);
		
		return "redirect:/bbs/notice/list";
	
	}
}
