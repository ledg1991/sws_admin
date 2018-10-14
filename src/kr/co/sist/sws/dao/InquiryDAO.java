package kr.co.sist.sws.dao;

import java.util.List;

import kr.co.sist.sws.vo.Inquiry;

public interface InquiryDAO {
	
	public List<Inquiry> inquirylist();
	public Inquiry answer(String iNumber);
    
    // 02. 회원 로그아웃

}
