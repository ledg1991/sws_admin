package kr.co.sist.sws.service;


import java.util.List;

import kr.co.sist.sws.vo.Member;

   

	public interface Memberservice {
	    // 01_01. ȸ�� ��� �������� ȸ����ȣ, ȸ�� id, ȸ�� �̸�, ȸ�� �̸���, ���Գ�¥, ����
	    public List<Member> memberlist();
	    public Member profile(String mNumber);
	    
	}


