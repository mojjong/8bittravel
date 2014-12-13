package org.yo.chat.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.yo.chat.mapper.ChatMapper;
import org.yo.chat.vo.ChatVO;

@Service("ChatService")
public class ChatService {
	
	private static Logger logger = LoggerFactory.getLogger(ChatService.class);
	
	@Inject
	ChatMapper mapper;
	
	
	public List<ChatVO> list(){
		return mapper.list();
	}
	
	public void insert(ChatVO vo){
		mapper.insert(vo);
	}
	
	

}
