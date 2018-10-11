package kr.co.sist.sws.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.sws.vo.Inquiry;


@Component// ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class InquiryDAOImpl implements InquiryDAO {
    // SqlSession ��ü�� �����ο��� �����Ͽ� ����
    
	@Autowired(required=false)
    SqlSession sqlSession; // mybatis ���� ��ü
	
    @Override
    public List<Inquiry> inquirylist(){
    	List<Inquiry> list=sqlSession.selectList("inquiry.inquirylist");
    	System.out.println("daoimpl------------------"+list);
    	return list;
    }
   
    
   
}
 

