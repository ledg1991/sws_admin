package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Manager;

   

	public interface Loginservice {
	    // 01_01. 회원 로그인 체크
	    public boolean loginCheck(Login lo,HttpSession session);
	    
	    // 02. 회원 로그아웃
	    public void logout(HttpSession session);
	}


