package org.yo.web.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

public class YomamUsernamePasswordAuthenticationFilter extends UsernamePasswordAuthenticationFilter {

	private static final Logger logger = LoggerFactory.getLogger(YomamUsernamePasswordAuthenticationFilter.class);
	
	@Override
	public Authentication attemptAuthentication(HttpServletRequest request,
			HttpServletResponse response) throws AuthenticationException {

		//로그인 프로세스 이전에 파라미터를 가로채는 부분.
		final String usermode = request.getParameter("usermode");
		request.getSession().setAttribute("usermode", usermode);
		
		logger.info("usermode : ", usermode);
		
		
		return super.attemptAuthentication(request, response);
	}
	
	

}
