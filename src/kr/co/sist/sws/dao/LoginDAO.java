package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.sws.vo.Login;

public interface LoginDAO {
	
	public boolean loginCheck(Login lo,HttpSession session);
    
    // 02. 회원 로그아웃
    public void logout(SessionStatus session,HttpSession ss);

}
