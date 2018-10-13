package kr.co.sist.sws.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.MemberDAO;
import kr.co.sist.sws.vo.Member;

@Component
public class MemberserviceImpl implements Memberservice {

	@Autowired(required=false)
    MemberDAO mem_dao;
    
    // 01_01. 회원 로그인체크
	
	@Override
	public List<Member> memberlist(){
		return mem_dao.memberlist();
		
	}
	
	public Member profile(String mNumber){
		return mem_dao.profile(mNumber);
		
	}
	
	

}
