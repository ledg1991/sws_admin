package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Manager;

public interface ManagerDAO {
	
	public boolean loginCheck(Manager mv);
    // 01_02. ȸ�� �α��� ����
    public Manager viewMember(Manager mv);
    // 02. ȸ�� �α׾ƿ�
    public void logout(HttpSession session);

}
