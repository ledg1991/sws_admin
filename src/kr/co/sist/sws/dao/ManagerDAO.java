package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Manager;

public interface ManagerDAO {
	
	public boolean loginCheck(Login lo,HttpSession session);
    // 01_02. ȸ�� �α��� ����
    // 02. ȸ�� �α׾ƿ�
    public void logout(HttpSession session);

}
