package kr.co.sist.sws.dao;

import java.util.List;


import kr.co.sist.sws.vo.Member;

public interface MemberDAO {
	
	public List<Member> memberlist();
	public Member profile(String mNumber);
	public Member m_stop(String mNumber);
	public Member activity(String mNumber);
    // 02. ȸ�� �α׾ƿ�

}
