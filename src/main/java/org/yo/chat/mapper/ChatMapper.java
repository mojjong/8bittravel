package org.yo.chat.mapper;

import java.util.List;

import org.yo.chat.vo.ChatVO;

public interface ChatMapper {
	
	public List<ChatVO> list();
	
	public void insert(ChatVO vo);

}
