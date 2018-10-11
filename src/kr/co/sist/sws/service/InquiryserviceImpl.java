package kr.co.sist.sws.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.InquiryDAO;
import kr.co.sist.sws.dao.ManagerDAO;
import kr.co.sist.sws.dao.MemberDAO;
import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Member;

@Component
public class InquiryserviceImpl implements Inquiryservice {

	@Autowired(required=false)
    InquiryDAO i_dao;
    
	@Override
	public List<Inquiry> inquirylist(){
		return i_dao.inquirylist();
		
	}
	

}
