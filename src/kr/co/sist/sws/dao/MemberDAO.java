package kr.co.sist.sws.dao;

import java.util.List;


import kr.co.sist.sws.vo.Member;

public interface MemberDAO {
	
	public List<Member> memberlist();
	public Member profile(String mNumber);
    
    // 02. ȸ�� �α׾ƿ�

}
