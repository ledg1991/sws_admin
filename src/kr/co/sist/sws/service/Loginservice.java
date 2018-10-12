package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.sws.vo.Login;

   

	public interface Loginservice {
	    // 01_01. 회원 로그인 체크
	    public boolean loginCheck(Login lo,HttpSession session);
	    
	    // 02. 회원 로그아웃
	    public void logout(SessionStatus session);
	}


