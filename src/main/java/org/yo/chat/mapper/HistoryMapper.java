package org.yo.chat.mapper;

import java.util.List;

import org.yo.chat.vo.HistoryVO;

public interface HistoryMapper {
	
	public List<HistoryVO> list();
	
	public void insert(HistoryVO vo);

}
