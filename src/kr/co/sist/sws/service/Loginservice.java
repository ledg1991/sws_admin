package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Manager;

   

	public interface Loginservice {
	    // 01_01. ȸ�� �α��� üũ
	    public boolean loginCheck(Manager mv, HttpSession session);
	    // 01_02. ȸ�� �α��� ����
	    public Manager viewMember(Manager mv);
	    // 02. ȸ�� �α׾ƿ�
	    public void logout(HttpSession session);
	}


