package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Manager;

public interface ManagerDAO {
	
	public boolean loginCheck(Manager mv);
    // 01_02. 회원 로그인 정보
    public Manager viewMember(Manager mv);
    // 02. 회원 로그아웃
    public void logout(HttpSession session);

}
