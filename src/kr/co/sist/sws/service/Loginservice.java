package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Manager;

   

	public interface Loginservice {
	    // 01_01. ȸ�� �α��� üũ
	    public boolean loginCheck(Login lo,HttpSession session);
	    
	    // 02. ȸ�� �α׾ƿ�
	    public void logout(HttpSession session);
	}


