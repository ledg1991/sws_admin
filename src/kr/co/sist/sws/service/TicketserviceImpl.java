package kr.co.sist.sws.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.InquiryDAO;
import kr.co.sist.sws.dao.LoginDAO;
import kr.co.sist.sws.dao.MemberDAO;
import kr.co.sist.sws.dao.ProductDAO;
import kr.co.sist.sws.dao.RentalDAO;
import kr.co.sist.sws.dao.TicketDAO;
import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Member;
import kr.co.sist.sws.vo.Product;
import kr.co.sist.sws.vo.Rental;
import kr.co.sist.sws.vo.Ticket;

@Component
public class TicketserviceImpl implements Ticketservice {

	@Autowired(required=false)
	TicketDAO t_dao;

	@Override
	public List<Ticket> ticketlist() {
		// TODO Auto-generated method stub
		return t_dao.ticketlist();
	}
    
	
	
	

}
