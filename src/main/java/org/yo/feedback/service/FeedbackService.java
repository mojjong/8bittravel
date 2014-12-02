package org.yo.feedback.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.yo.feedback.mapper.FeedbackMapper;
import org.yo.feedback.vo.FeedbackVO;

@Service("FeedbackService")
public class FeedbackService {

	@Inject
	FeedbackMapper mapper;
	
	public List<FeedbackVO> list(int page){
		
		return mapper.list(page);
	}

	
	public void create(FeedbackVO vo){
		
		mapper.create(vo);
	}

	public FeedbackVO read(int no){
		
		return mapper.read(no);
	}
	
	public void update(FeedbackVO vo){
		
		mapper.update(vo);
	
	}
	
	public void delete(int no){
		
		
		mapper.delete(no);
	}
}
