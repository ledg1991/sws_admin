package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Member;

public interface MemberDAO {
	
	public boolean member(Member mo,HttpSession session);
    
    // 02. ȸ�� �α׾ƿ�
    public void search(HttpSession session);

}
