package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Member;

   

	public interface Memberservice {
	    // 01_01. ȸ�� ��� �������� ȸ����ȣ, ȸ�� id, ȸ�� �̸�, ȸ�� �̸���, ���Գ�¥, ����
	    public Member memberlist(Member mo);
	    // 01_02. ȸ�� �˻�
	    
	    // 02. ȸ�� �� ���� ���
	    public void logout(HttpSession session);
	}


