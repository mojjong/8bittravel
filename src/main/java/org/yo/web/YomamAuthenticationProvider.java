package org.yo.web;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.yo.user.service.UserService;
import org.yo.user.vo.UserVO;
import org.yo.user.vo.YomamUserDetail;

public class YomamAuthenticationProvider implements AuthenticationProvider {

	private static final Logger logger = LoggerFactory.getLogger(YomamAuthenticationProvider.class);

	@Inject
	private UserService service;
	
	
	@Override
	public boolean supports(Class<?> authentication){
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		

		
		String user_id = (String)authentication.getPrincipal();
		String user_pw = (String)authentication.getCredentials();

		logger.info("사용자가 입력한 로그인정보입니다. {}", user_id + "/" + user_pw);

		UserVO vo = new UserVO().setId(user_id).setPw(user_pw);
		
		if(service.login(vo).equals("1")){
			
			logger.info("정상 로그인입니다.");
			List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
			roles.add(new SimpleGrantedAuthority("ROLE_USER"));

			UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(user_id, user_pw, roles);
			result.setDetails(new YomamUserDetail(user_id, user_pw));
			
			return result;
			
		} else {

			logger.info("올바르지 않은 사용자 정보입니다.");
			throw new BadCredentialsException("Bad credentials");

		}

	}


}
