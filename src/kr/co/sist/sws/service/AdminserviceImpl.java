package kr.co.sist.sws.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.AdminDAO;
import kr.co.sist.sws.dao.InquiryDAO;
import kr.co.sist.sws.dao.ManagerDAO;
import kr.co.sist.sws.dao.MemberDAO;
import kr.co.sist.sws.dao.ProductDAO;
import kr.co.sist.sws.dao.RentalDAO;
import kr.co.sist.sws.vo.Admin;
import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Member;
import kr.co.sist.sws.vo.Product;
import kr.co.sist.sws.vo.Rental;

@Component
public class AdminserviceImpl implements Adminservice {

	@Autowired(required=false)
	AdminDAO a_dao;

	@Override
	public List<Admin> adminlist() {
		// TODO Auto-generated method stub
		return a_dao.adminlist();
	}
    
	
	
	

}
