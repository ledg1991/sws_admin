package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.sws.vo.Login;

   

	public interface Loginservice {
	    // 01_01. ȸ�� �α��� üũ
	    public boolean loginCheck(Login lo,HttpSession session);
	    
	    // 02. ȸ�� �α׾ƿ�
	    public void logout(SessionStatus session);
	}


