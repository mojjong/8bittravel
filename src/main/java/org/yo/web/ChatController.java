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
import org.yo.chat.service.ChatService;
import org.yo.chat.service.HistoryService;
import org.yo.chat.vo.ChatVO;
import org.yo.chat.vo.HistoryVO;
import org.yo.web.util.Json;


@Controller
@RequestMapping("/chat/*")
public class ChatController {
	
	private static Logger logger = LoggerFactory.getLogger(ChatController.class);
	
	@Inject
	ChatService chatService;
	
	@Inject
	HistoryService historyService;
	
	@RequestMapping("/uroom")
	public String userRoom(ChatVO vo, Model model){
		List<ChatVO> chatlist = chatService.list();
		List<HistoryVO> historylist = historyService.list();
		model.addAttribute("chatlist", chatlist);
		model.addAttribute("historylist", historylist);
		return "/chat/room";
	}
	
	@RequestMapping("/groom")
	public String guideRoom(ChatVO vo, Model model){
		List<ChatVO> chatlist = chatService.list();
		List<HistoryVO> historylist = historyService.list();
		model.addAttribute("chatlist", chatlist);
		model.addAttribute("historylist", historylist);
		return "/chat/guideroom";
	}
	
    @RequestMapping(value = "/sendmsg", method = RequestMethod.POST)
    public @ResponseBody Json sendMsg(ChatVO vo) {
    	logger.info(vo.toString());
    	chatService.insert(vo);
        return new Json("{ \"result\" : \"success\" }");
    }
    
    @RequestMapping(value = "/sendlocation", method = RequestMethod.POST)
    public @ResponseBody Json sendLocation(HistoryVO vo) {
    	logger.info(vo.toString());
    	historyService.insert(vo);
        return new Json("{ \"result\" : \"success\" }");
    }
	

}
