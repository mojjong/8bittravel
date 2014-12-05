package org.yo.web;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.yo.qna.service.QnaService;
import org.yo.qna.vo.QnaVO;
import org.yo.web.util.QnaCriteria;

@Controller
@RequestMapping("/bbs/qna/*")
public class QnaController {

	private Logger logger = Logger.getLogger(QnaController.class);
	
	@Inject
	private QnaService service;
	
	@RequestMapping(value="/board")
	public String qna(){
		
		logger.info("qna 리스트 ");
		return "/bbs/qna/qnalist";
	}
	


	@RequestMapping(value="/persqna", method = RequestMethod.GET)
	public String personalQna(
			@RequestParam(value = "page", defaultValue = "1") Integer page, Model model){
		
		QnaCriteria cri = new QnaCriteria();
		cri.setCurrentPage(page);
		List<QnaVO> list = service.list(cri);
		cri.setCnt(list.get(0).getCnt());
		
		model.addAttribute("qnaList", list);
		model.addAttribute("pageVo", cri);
		logger.info(service);
	
		return "/bbs/qna/personalqna";
	}
	
	/*@RequestMapping(value="/write", method = RequestMethod.GET)
	public String qnawrite(QnaVO vo){
		return "/bbs/qna/write";
		
	}
	*/
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String write(QnaVO vo){
		logger.info("여기까지 오면 성공" + vo.toString());
		
		service.write(vo);
		return "redirect:/bbs/qna/persqna";
		
	}

	@RequestMapping(value="/delete")
	public String delete(QnaVO no){
		logger.info(no.toString());
		service.delete(no);
		
		return "redirect:/bbs/qna/persqna";
	}
	
	@RequestMapping(value="/modify")
	public String modify(QnaVO no){
		
		logger.info(no.toString());
		service.update(no);
		
		return null;
	}

	
}

