package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Manager;

   

	public interface Loginservice {
	    // 01_01. 회원 로그인 체크
	    public boolean loginCheck(Manager mv, HttpSession session);
	    // 01_02. 회원 로그인 정보
	    public Manager viewMember(Manager mv);
	    // 02. 회원 로그아웃
	    public void logout(HttpSession session);
	}


