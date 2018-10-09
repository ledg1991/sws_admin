package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Manager;

public interface ManagerDAO {
	
	public boolean loginCheck(Login lo,HttpSession session);
    // 01_02. 회원 로그인 정보
    // 02. 회원 로그아웃
    public void logout(HttpSession session);

}
