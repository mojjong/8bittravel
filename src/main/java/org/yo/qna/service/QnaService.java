package org.yo.qna.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.yo.qna.mapper.QnaMapper;
import org.yo.qna.vo.QnaVO;
import org.yo.web.util.QnaCriteria;

@Service
public class QnaService {

	private Logger logger = Logger.getLogger(QnaService.class);
	
	@Inject
	private QnaMapper mapper;

	public List<QnaVO> list(QnaCriteria cri) {
		
		System.out.println("qna 리스트 서비스");
		
		return mapper.list(cri);
		
	}
	
	public void write(QnaVO vo){
		System.out.println("qna 글쓰기 서비스");
		mapper.write(vo);
	}

	public void delete(QnaVO no) {
		System.out.println("delete 서비스");
		mapper.delete(no);
		
	}

	public void update(QnaVO no) {
		System.out.println("update 서비스");
		mapper.update(no);
		
		
	}

	
}
