package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Inquiry;


@Component// 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class InquiryDAOImpl implements InquiryDAO {
    // SqlSession 객체를 스프핑에서 생성하여 주입
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis 실행 객체
	
    @Override
    public List<Inquiry> inquirylist(){
    	List<Inquiry> list=sqlSession.selectList("inquiry.inquirylist");
    	System.out.println("daoimpl------------------"+list);
    	return list;
    }
   
    
   
}
 

