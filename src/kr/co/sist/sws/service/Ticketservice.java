package kr.co.sist.sws.service;


import java.util.List;

import kr.co.sist.sws.vo.Rental;
import kr.co.sist.sws.vo.Ticket;

   

	public interface Ticketservice {
	    // 01_01. 회원 목록 가져오기 회원번호, 회원 id, 회원 이름, 회원 이메일, 가입날짜, 상태
	    public List<Ticket> ticketlist();
	    
	}


