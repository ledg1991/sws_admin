package kr.co.sist.sws.service;

import javax.servlet.http.HttpSession;

import kr.co.sist.sws.vo.Member;

   

	public interface Memberservice {
	    // 01_01. 회원 목록 가져오기 회원번호, 회원 id, 회원 이름, 회원 이메일, 가입날짜, 상태
	    public Member memberlist(Member mo);
	    // 01_02. 회원 검색
	    
	    // 02. 회원 상세 정보 출력
	    public void logout(HttpSession session);
	}


