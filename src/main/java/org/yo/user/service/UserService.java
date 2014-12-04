package org.yo.user.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.yo.user.mapper.UserMapper;
import org.yo.user.vo.UserVO;


@Service("UserService")
public class UserService {

	@Inject
	private UserMapper mapper;
	
	public void join(UserVO vo){
		mapper.join(vo);
	}
	
	public String checkid(String id){
		return mapper.checkid(id);
	}
	
}
