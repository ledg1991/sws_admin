package kr.co.sist.sws.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.InquiryDAO;
import kr.co.sist.sws.dao.ManagerDAO;
import kr.co.sist.sws.dao.MemberDAO;
import kr.co.sist.sws.dao.NoticeDAO;
import kr.co.sist.sws.dao.ProductDAO;
import kr.co.sist.sws.dao.RentalDAO;
import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Member;
import kr.co.sist.sws.vo.Notice;
import kr.co.sist.sws.vo.Product;
import kr.co.sist.sws.vo.Rental;

@Component
public class NoticeserviceImpl implements Noticeservice {

	@Autowired(required=false)
	NoticeDAO n_dao;

	@Override
	public List<Notice> noticelist() {
		// TODO Auto-generated method stub
		return n_dao.noticelist();
	}
    
	
	
	

}
