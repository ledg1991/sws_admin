package kr.co.sist.sws.dao;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Login;
import kr.co.sist.sws.vo.Member;

public interface MemberDAO {
	
	public boolean member(Member mo,HttpSession session);
    
    // 02. 회원 로그아웃
    public void search(HttpSession session);

}
