package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Manager;

public class ManagerDAO {
	
	public boolean loginCheck(Manager vo);
    // 01_02. ȸ�� �α��� ����
    public MemberVO viewMember(MemberVO vo);
    // 02. ȸ�� �α׾ƿ�
    public void logout(HttpSession session);

}
