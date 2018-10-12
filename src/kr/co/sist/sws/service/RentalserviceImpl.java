package kr.co.sist.sws.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.InquiryDAO;
import kr.co.sist.sws.dao.ManagerDAO;
import kr.co.sist.sws.dao.MemberDAO;
import kr.co.sist.sws.dao.ProductDAO;
import kr.co.sist.sws.dao.RentalDAO;
import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Member;
import kr.co.sist.sws.vo.Product;
import kr.co.sist.sws.vo.Rental;

@Component
public class RentalserviceImpl implements Rentalservice {

	@Autowired(required=false)
	RentalDAO r_dao;

	@Override
	public List<Rental> rentallist() {
		// TODO Auto-generated method stub
		return r_dao.rentallist();
	}
    
	
	
	

}
