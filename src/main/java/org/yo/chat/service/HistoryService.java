package org.yo.chat.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.yo.chat.mapper.HistoryMapper;
import org.yo.chat.vo.HistoryVO;


@Service("HistoryService")
public class HistoryService {
	
	private static Logger logger = LoggerFactory.getLogger(HistoryService.class);
	
	@Inject
	HistoryMapper mapper;
	
	public List<HistoryVO> list(){
		return mapper.list();
	}
	
	public void insert(HistoryVO vo){
		mapper.insert(vo);
	}

}
