package kr.co.sist.sws.service;


import java.util.List;

import kr.co.sist.sws.vo.Product;

   

	public interface Productservice {
	    // 01_01. 회원 목록 가져오기 회원번호, 회원 id, 회원 이름, 회원 이메일, 가입날짜, 상태
	    public List<Product> productlist();
	    public Product info(String pNum);
	 // 03. 상품추가
	    public void regist(Product pv) ;
	    // 04. 상품수정
	    public void update(Product pv);
	    // 05. 상품삭제
	    public void delete(String pNum);
	    
	    
	    
	}


