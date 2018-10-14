package kr.co.sist.sws.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.dao.InquiryDAO;
import kr.co.sist.sws.dao.LoginDAO;
import kr.co.sist.sws.dao.MemberDAO;
import kr.co.sist.sws.dao.ProductDAO;
import kr.co.sist.sws.vo.Inquiry;
import kr.co.sist.sws.vo.Member;
import kr.co.sist.sws.vo.Product;

@Component
public class ProductserviceImpl implements Productservice {

	@Autowired(required=false)
	ProductDAO p_dao;

	@Override
	public List<Product> productlist() {
		// TODO Auto-generated method stub
		return p_dao.productlist();
	}

	@Override
	public Product info(String pNum) {
		// TODO Auto-generated method stub
		return p_dao.info(pNum);
	}

	@Override
	public void regist(Product pv) {
		p_dao.regist(pv);
		
	}

	@Override
	public void update(Product pv) {
		p_dao.update(pv);
	}

	@Override
	public void delete(String pNum) {
		p_dao.delete(pNum);
		
	}
    
	
	
	

}
