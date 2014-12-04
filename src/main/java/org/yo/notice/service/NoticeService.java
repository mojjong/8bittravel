package org.yo.notice.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.yo.notice.mapper.NoticeMapper;
import org.yo.notice.vo.Criteria;
import org.yo.notice.vo.NoticeVO;

@Service("NoticeService")
public class NoticeService {

	@Inject
	NoticeMapper mapper;
	
	public List<NoticeVO> list(Criteria cri){
		
		return mapper.list(cri);
	}
public void create(NoticeVO vo){
		
		mapper.create(vo);
	}

	public NoticeVO read(int no){
		
		return mapper.read(no);
	}
	
	public void update(NoticeVO vo){
		
		mapper.update(vo);
		
		System.out.println(vo);
	
	}
	
	public void delete(int no){
		
		
		mapper.delete(no);
	}
}
