package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Login;

public interface ManagerDAO {
	
	public boolean loginCheck(Login lo,HttpSession session);
    
    // 02. ȸ�� �α׾ƿ�
    public void logout(HttpSession session);

}
