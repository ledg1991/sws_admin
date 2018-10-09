package kr.co.sist.sws.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.ManagerDAO;
import kr.co.sist.sws.vo.Member;

@Component
public class MemberserviceImpl implements Memberservice {

	@Autowired(required=false)
    ManagerDAO mDao;
    
    // 01_01. 회원 로그인체크
	
	@Override
	public Member memberlist(Member mo) {
		
		return mo;
	}

	

}
