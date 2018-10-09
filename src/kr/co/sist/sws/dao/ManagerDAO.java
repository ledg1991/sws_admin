package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Login;

public interface ManagerDAO {
	
	public boolean loginCheck(Login lo,HttpSession session);
    
    // 02. 회원 로그아웃
    public void logout(HttpSession session);

}
